UART PRINTF demo example

Description of example project
==============================
This example shows how to retarget standard C printf and the usage of the XMC_ASSERT.

Hardware Setup
===============
XMC4500 CPU board / XMC4500 Relax Kit
Rx Pin : 1.4 , Tx Pin : 1.5 (connected through Debug & Com part to the USB connection)
Use a teminal program and configure the COM port using 115200 baud rate, 8 data bits, 1 stop bit, no parity.

How to test the application
============================
a. Import the project
b. Define the macros, XMC_ASSERT_ENABLE and XMC_USER_ASSERT_FUNCTION
c. Compile and flash the application onto the device
d. Run the application. 
e. In the terminal program appears a welcome message, and the error message reported by a failed assertion

