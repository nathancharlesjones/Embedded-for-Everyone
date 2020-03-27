Description of example project
==============================

HTTPSERVER

This is a demonstration of how to make the most basic kind 
of server using lWIP in an RTOS environment (CMSIS RTOS)

Hardware Setup
===============
XMC4500 Relaxkit/XMC4500 Appkit

How to test the application
============================
a. Import project into IDE  
   - Check compilation options. Add macro definitions RELAXKIT and XMC_ETH_PHY_KSZ8081RNB or APPKIT and XMC_ETH_PHY_DP83848C.
   - Keil MDK
     Configure the CMSIS RTOS (RTX_Conf_CM.c)
       OS_TASKCNT 9
       OS_STKSIZE 256
       OS_PRIVCNT 6
       OS_PRIVSTKSIZE 2048
       OS_CLOCK 120000000
b. Compile and flash the application onto the device
c. Run the application. 

The IP address of the board is manual configured using 192.168.0.10.
Reconfigure PC network address to something like 192.168.0.11. 
Direct your web browser at 192.168.0.10, a welcome message should be displayed.

NOTE: New batch of Relaxkit boards are using ksz8081 instead of ksz8031. 
      If the application hangs in the ethernetif_error function, please use the ksz8031 by replacing the C macro XMC_ETH_PHY_KSZ8081RNB by XMC_ETH_PHY_KSZ8031RNL in compiler settings.