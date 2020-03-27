CAN receiver example

Description of example project
==============================
This example shows a CAN NODE receiving frames and showing the data received in the debug printf viewer.
This is example can be used together with the CAN_TRANSMITTER example running in additional board. (see BOARD_SETUP.png)
Connect the boards using CAN cable.

Hardware Setup
===============
XMC4700 Relax Kit
Rx Pin : 1.4 , Tx Pin : 1.5 (connected through Debug & Com part to the USB connection)
Use a teminal program and configure the COM port using 115200 baud rate, 8 data bits, 1 stop bit, no parity.

How to test the application
============================
a. Import the project 
b. Compile and flash the application onto the device
c. In the debug terminal check the values received
