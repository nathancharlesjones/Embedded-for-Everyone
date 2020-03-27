Description of example project
==============================

LWIP_TLS_CLIENT

This sample code shows a simple DTLS client using mbed TLS on top of lwIP and FreeRTOS 

Hardware Setup
===============
XMC4700/XMC4800 Relaxkit
Running ssl_server at connected PC
DHCP and DNS server available in the network 

How to test the application
============================
a. Start test ssl_server provided with mbed TLS at PC
   $ ssl_server2 debug_level=5 psk_identity=“client” psk=0102030405 force_version=tls1_2
b. Import project to your IDE
   Change server name in ssl_client.c, i.e. 
   #define SERVER_NAME "192.168.2.103"
c. Compile
d. Run the application. In the terminal window you should get something similar to:

Got IP:192.168.2.104

  . Seeding the random number generator... ok
  . Connecting to tcp/192.168.2.103/4433... ok
  . Setting up the SSL/TLS structure... ok
  . Performing the SSL/TLS handshake... ok
  > Write to server: 18 bytes written

GET / HTTP/1.0

  < Read from server: 139 bytes read

HTTP/1.0 200 OK
Content-Type: text/html

<h2>mbed TLS Test Server</h2>
<p>Successful connection using: TLS-PSK-WITH-AES-128-CCM-8</p>
