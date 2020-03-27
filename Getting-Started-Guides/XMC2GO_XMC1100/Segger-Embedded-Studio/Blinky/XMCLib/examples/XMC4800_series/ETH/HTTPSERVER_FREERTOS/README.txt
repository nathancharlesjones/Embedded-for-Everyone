Description of example project
==============================
This is a demonstration of how to implement http server using lWIP on top of FreeRTOS
It also demonstrates how to use CGI and SSI.

Hardware Setup
===============
XMC4700/XMC4800 Relaxkit 

How to test the application
============================
a. Import project in your IDE.
b. Compile and flash the application onto the device.
c. Run the application. 
d. Connect with a browser in your PC to the address of you board
   - static IP: The IP address of the board is manual configured using 192.168.0.10.
   - DHCP (see LWIP_DHCP setting in lwipopts.h): Check assigned IP address in serial terminal.

How to change web server content
================================
In the resources folder are stored the contents of the webserver.
The content is converted to C code using the makefsdata util.
Utils/makefsdata.exe Resources -ffsdata.h
