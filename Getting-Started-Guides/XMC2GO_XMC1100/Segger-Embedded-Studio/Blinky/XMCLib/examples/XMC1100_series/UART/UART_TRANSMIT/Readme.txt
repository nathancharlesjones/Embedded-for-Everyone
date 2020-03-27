UART demo example

Description of example project
==============================
Send a periodic (1s) message via UART.

Hardware Setup
===============
XMC1100 Bootkit
Rx Pin : 1.3 , Tx Pin : 1.2 (connected through Debug & Com part to the USB connection)

How to test the application
============================
a. Import the project
b. Compile and flash the application onto the device
c. Open a terminal window in the Host device, configure the baudrate to 115200 and 
	connect it to the respective JLink CDC UART Port.
d. Run the application. 
e. See in the terminal "Hello world!!" every time that the P0.6 Led toggles.
