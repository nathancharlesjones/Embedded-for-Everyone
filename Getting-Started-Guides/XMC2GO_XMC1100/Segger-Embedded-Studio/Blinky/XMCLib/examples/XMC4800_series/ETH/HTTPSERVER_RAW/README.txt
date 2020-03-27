Description of example project
==============================

HTTPSERVER

This is a demonstration of how to make the most basic kind of server using lWIP.

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
XMC4700/XMC4800 Relaxkit 

How to test the application
============================
a. Import project in IDE    
b. Compile and flash the application onto the device
c. Run the application. 

The IP address of the board is manually configured using 192.168.0.10.
Reconfigure PC network address to something like 192.168.0.11. 
Direct your web browser at 192.168.0.10, a welcome message should be displayed.
Pressing the buttons toggles the LED1 and LED2 of the Relaxkit.

How to change web server content
================================
In the resources folder are stored the contents of the webserver.
The content is converted to C code using the makefsdata util.
Utils/makefsdata.exe Resources -ffsdata.h
