#ifndef __LWIPOPTS_H__
#define __LWIPOPTS_H__

#include "FreeRTOS.h"
#include "task.h"

#define NO_SYS                  0

#define LWIP_NETIF_STATUS_CALLBACK  1
#define LWIP_NETIF_LINK_CALLBACK    1

#define ETH_PAD_SIZE            2

#define MEM_ALIGNMENT           4

#define TCPIP_MBOX_SIZE             16
#define DEFAULT_TCP_RECVMBOX_SIZE   8
#define DEFAULT_UDP_RECVMBOX_SIZE   8
#define DEFAULT_RAW_RECVMBOX_SIZE   8
#define DEFAULT_ACCEPTMBOX_SIZE     8

#define TCPIP_THREAD_STACKSIZE   1024
#define TCPIP_THREAD_PRIO        (configMAX_PRIORITIES - 1)
#define DEFAULT_THREAD_STACKSIZE configMINIMAL_STACK_SIZE
#define DEFAULT_THREAD_PRIO       tskIDLE_PRIORITY

#define MEM_SIZE                (16 * 1024)

#define PBUF_POOL_SIZE          64
#define PBUF_POOL_BUFSIZE       256
#define MEMP_NUM_PBUF           16
#define MEMP_NUM_TCP_SEG        16
#define MEMP_NUM_UDP_PCB        4
#define MEMP_NUM_TCP_PCB        4
#define MEMP_NUM_TCP_PCB_LISTEN 4

#define LWIP_UDP                1
#define LWIP_TCP                1
#define TCP_MSS                 1460
#define TCP_WND                 (4 * TCP_MSS)
#define TCP_SND_BUF             (4 * TCP_MSS)
#define TCP_SND_QUEUELEN        8

#define IP_OPTIONS_ALLOWED      1
#define IP_FRAG                 1
#define IP_REASSEMBLY           1

#define CHECKSUM_GEN_IP         0
#define CHECKSUM_GEN_UDP        0
#define CHECKSUM_GEN_TCP        0
#define CHECKSUM_GEN_ICMP       0
#define CHECKSUM_CHECK_IP       0
#define CHECKSUM_CHECK_UDP      0
#define CHECKSUM_CHECK_TCP      0
#define CHECKSUM_CHECK_ICMP     0

#define LWIP_DHCP               1
#define LWIP_DNS                1
#define LWIP_DEBUG
#define DHCP_DEBUG LWIP_DBG_ON

#define LWIP_SOCKET             (NO_SYS==0)
#define LWIP_NETCONN            (NO_SYS==0)
#define SYS_LIGHTWEIGHT_PROT    (NO_SYS==0)

#define LWIP_TCPIP_CORE_LOCKING 1
#define LWIP_TCPIP_CORE_LOCKING_INPUT 1
#define LWIP_NETCONN_SEM_PER_THREAD 1

#define MEMP_NUM_SYS_TIMEOUT    (LWIP_NUM_SYS_TIMEOUT_INTERNAL + 8)

#endif /* __LWIPOPTS_H__ */

