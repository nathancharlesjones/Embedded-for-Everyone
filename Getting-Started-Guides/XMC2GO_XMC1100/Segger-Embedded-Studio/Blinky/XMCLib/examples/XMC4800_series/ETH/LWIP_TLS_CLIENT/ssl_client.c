#include <stdio.h>
#include <string.h>

#include "FreeRTOS.h"
#include "lwip/sys.h"

#include "mbedtls/net.h"
#include "mbedtls/debug.h"
#include "mbedtls/ssl.h"
#include "mbedtls/entropy.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/error.h"
#include "mbedtls/certs.h"
#include "mbedtls/platform.h"

#define mbedtls_fprintf    fprintf
#define mbedtls_printf     printf

#define SERVER_PORT "4433"
#define SERVER_NAME "192.168.2.103"
#define GET_REQUEST "GET / HTTP/1.0\r\n\r\n"
#define CIPHERSUITE "TLS-PSK-WITH-AES-128-CCM-8"

#define DEBUG_LEVEL 1

static void my_debug( void *ctx, int level,
                      const char *file, int line,
                      const char *str )
{
    ((void) level);

    mbedtls_fprintf( (FILE *) ctx, "%s:%04d: %s", file, line, str );
    fflush(  (FILE *) ctx  );
}

// https://tls.mbed.org/kb/how-to/using-static-memory-instead-of-the-heap
void *pvPortCalloc(size_t nmemb, size_t size)
{
  return pvPortMalloc(nmemb * size);
}

static void ssl_client_thread(void *parameter)
{
	(void)parameter;

    int ret, len;
    mbedtls_net_context server_fd;
    unsigned char buf[1024];
    const char *pers = "ssl_client1";
    int force_ciphersuite[2];
    unsigned char psk[] = {0x1, 0x2, 0x3, 0x4, 0x5};
    unsigned char psk_identity[] = {0x63, 0x6c, 0x69, 0x65, 0x6e, 0x74};

    mbedtls_entropy_context entropy;
    mbedtls_ctr_drbg_context ctr_drbg;
    mbedtls_ssl_context ssl;
    mbedtls_ssl_config conf;

#if defined(MBEDTLS_DEBUG_C)
    mbedtls_debug_set_threshold( DEBUG_LEVEL );
#endif

    mbedtls_platform_set_calloc_free(pvPortCalloc, vPortFree);
    
    /*
     * Initialize TLS session data
     */
    mbedtls_net_init( &server_fd );
    mbedtls_ssl_init( &ssl );
    mbedtls_ssl_config_init( &conf );

    /*
     * Initialize the RNG
     */
    mbedtls_ctr_drbg_init( &ctr_drbg );

    mbedtls_printf( "\r\n  . Seeding the random number generator..." );
    fflush( stdout );

    mbedtls_entropy_init( &entropy );
    if( ( ret = mbedtls_ctr_drbg_seed( &ctr_drbg, mbedtls_entropy_func, &entropy,
                               (const unsigned char *) pers,
                               strlen( pers ) ) ) != 0 )
    {
        mbedtls_printf( " failed\r\n  ! mbedtls_ctr_drbg_seed returned %d\r\n", ret );
        goto exit;
    }

    mbedtls_printf( " ok\r\n" );

    /*
     * Establish TCP connection
     */
    mbedtls_printf( "  . Connecting to tcp/%s/%s...", SERVER_NAME, SERVER_PORT );
    fflush( stdout );

    if( ( ret = mbedtls_net_connect( &server_fd, SERVER_NAME,
                                         SERVER_PORT, MBEDTLS_NET_PROTO_TCP ) ) != 0 )
    {
        mbedtls_printf( " failed\r\n  ! mbedtls_net_connect returned %d\r\n\r\n", ret );
        goto exit;
    }

    mbedtls_printf( " ok\r\n" );

    /*
     * Configure TLS
     */
    mbedtls_printf( "  . Setting up the SSL/TLS structure..." );
    fflush( stdout );

    if( ( ret = mbedtls_ssl_config_defaults( &conf,
                    MBEDTLS_SSL_IS_CLIENT,
                    MBEDTLS_SSL_TRANSPORT_STREAM,
                    MBEDTLS_SSL_PRESET_DEFAULT ) ) != 0 )
    {
        mbedtls_printf( " failed\r\n  ! mbedtls_ssl_config_defaults returned %d\r\n\r\n", ret );
        goto exit;
    }

    mbedtls_printf( " ok\r\n" );

    // Configure RNG for use with TLS
    mbedtls_ssl_conf_rng( &conf, mbedtls_ctr_drbg_random, &ctr_drbg );
    // Configure debugging support for TLS
    mbedtls_ssl_conf_dbg( &conf, my_debug, stdout );

    if( ( ret = mbedtls_ssl_setup( &ssl, &conf ) ) != 0 )
    {
        mbedtls_printf( " failed\r\n  ! mbedtls_ssl_setup returned %d\r\n\r\n", ret );
        goto exit;
    }

    // configure use of specific ciphersuite
    force_ciphersuite[0] = mbedtls_ssl_get_ciphersuite_id(CIPHERSUITE);
    force_ciphersuite[1] = 0;
    if (force_ciphersuite[0] != 0)
    {
        mbedtls_ssl_conf_ciphersuites(&conf, force_ciphersuite);
    }

    // Configure send/receive functions
    mbedtls_ssl_set_bio(&ssl, &server_fd, mbedtls_net_send, mbedtls_net_recv, NULL);

    if ((ret = mbedtls_ssl_conf_psk(&conf, (const unsigned char *)psk, sizeof(psk),
                                           (const unsigned char *)psk_identity, sizeof(psk_identity))) != 0)
    {
        mbedtls_printf(" failed\r\n ! mbedtls_ssl_conf_psk returnd %d\r\n\r\n", ret);
        goto exit;
    }

    /*
     * Run TLS handshake
     */
    mbedtls_printf( "  . Performing the SSL/TLS handshake..." );
    fflush( stdout );

    while( ( ret = mbedtls_ssl_handshake( &ssl ) ) != 0 )
    {
        if( ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE )
        {
            mbedtls_printf( " failed\r\n  ! mbedtls_ssl_handshake returned -0x%x\r\n\r\n", -ret );
            goto exit;
        }
    }

    mbedtls_printf( " ok\r\n" );


    /*
     * Write the GET request
     */
    mbedtls_printf( "  > Write to server:" );
    fflush( stdout );

    len = sprintf( (char *) buf, GET_REQUEST );

    while( ( ret = mbedtls_ssl_write( &ssl, buf, len ) ) <= 0 )
    {
        if( ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE )
        {
            mbedtls_printf( " failed\r\n  ! mbedtls_ssl_write returned %d\r\n\r\n", ret );
            goto exit;
        }
    }

    len = ret;
    mbedtls_printf( " %d bytes written\r\n\r\n%s", len, (char *) buf );

    /*
     * Read the HTTP response
     */
    mbedtls_printf( "  < Read from server:" );
    fflush( stdout );

    do
    {
        len = sizeof( buf ) - 1;
        memset( buf, 0, sizeof( buf ) );
        ret = mbedtls_ssl_read( &ssl, buf, len );

        if( ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE )
            continue;

        if( ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY )
            break;

        if( ret < 0 )
        {
            mbedtls_printf( "failed\r\n  ! mbedtls_ssl_read returned %d\r\n\r\n", ret );
            break;
        }

        if( ret == 0 )
        {
            mbedtls_printf( "\r\n\r\nEOF\r\n\r\n" );
            break;
        }

        len = ret;
        mbedtls_printf( " %d bytes read\r\n\r\n%s", len, (char *) buf );
    }
    while( 1 );

    mbedtls_ssl_close_notify( &ssl );

exit:

#ifdef MBEDTLS_ERROR_C
    if( ret != 0 )
    {
        char error_buf[100];
        mbedtls_strerror( ret, error_buf, 100 );
        mbedtls_printf("Last error was: %d - %s\n\n", ret, error_buf );
    }
#endif

    mbedtls_net_free( &server_fd );

    mbedtls_ssl_free( &ssl );
    mbedtls_ssl_config_free( &conf );
    mbedtls_ctr_drbg_free( &ctr_drbg );
    mbedtls_entropy_free( &entropy );

    while(1);
}

void ssl_client_init(void)
{
  sys_thread_new("ssl_client_thread", ssl_client_thread, NULL, configMINIMAL_STACK_SIZE * 10, DEFAULT_THREAD_PRIO + 1);
}
