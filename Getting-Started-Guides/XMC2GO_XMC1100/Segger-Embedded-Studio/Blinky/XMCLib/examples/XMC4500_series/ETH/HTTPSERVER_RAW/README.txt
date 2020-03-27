Description of example project
==============================

HTTPSERVER

This is a demonstration of how to make the most basic kind 
of server using lWIP.

* httpd.c - uses,
  - the raw API
  - the system timer to  to have certain functions called at regular intervals to 
    perform house-keeping tasks, such as handling TCP timeouts, retransmissions and so forth.
  - Uses CGI and SSI

* fsdata.c is the flash file system, generated from the makefsdata folder using the makefsdata utility
  - to generate new content for the server, 
    1. place your web content in the folder fs of makefsdata folder
    2. run makefsdata without arguments
    3. copy fsdata.c to the folder httpserver_raw using name fsdata.dat

Hardware Setup
===============
XMC4500 Relaxkit/XMC4500 Appkit 

How to test the application
============================
a. Import project into IDE
   - Check compilation options. Add macros RELAXKIT and XMC_ETH_PHY_KSZ8081RNB or APPKIT and XMC_ETH_PHY_DP83848C
b. Compile and flash the application onto the device
c. Run the application. 

The IP address of the board is manual configured using 192.168.0.10.
Reconfigure PC network address to something like 192.168.0.11. 
Direct your web browser at 192.168.0.10, a welcome message should be displayed.
Pressing the button toggles the LED1 of the Relaxkit.

NOTE: New batch of Relaxkit boards are using ksz8081 instead of ksz8031. 
      If the application hangs in the ethernetif_error function, please use the ksz8031 by replacing the C macro XMC_ETH_PHY_KSZ8081RNB by XMC_ETH_PHY_KSZ8031RNL in compiler settings.