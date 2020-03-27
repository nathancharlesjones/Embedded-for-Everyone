UART PRINTF demo example

Description of example project
==============================
This example shows how to retarget standard C printf and the usage of the XMC_ASSERT.

Hardware Setup
===============
XMC4700 / XMC4800 Relax Kit
Rx Pin : 1.4 , Tx Pin : 1.5 (connected through Debug & Com part to the USB connection)
Use a teminal program and configure the COM port using 115200 baud rate, 8 data bits, 1 stop bit, no parity.

How to test the application
============================
a. Import the project
b. Check the macro XMC_ASSERT_ENABLE is defined in the preprocessor settings of the project.
c. Compile and flash the application onto the device
d. Run the application. 
e. In the terminal program appears a welcome message, and the error message reported by a failed assertion

