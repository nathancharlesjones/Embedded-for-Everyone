CAN receiver example

Description of example project
==============================
This example shows a CAN NODE receiving frames and showing the data received in the debug printf viewer.
This is example can be used together with the CAN_TRANSMITTER example running in additional board. (see can_receiver_two_boards_setup.jpg)
Connect the boards using CAN cable.

Hardware Setup
===============
XMC4500 Application Kit + Ethernet/CAN/RS485 Interface Card 

How to test the application
============================
a. Import the project 
b. Compile and flash the application onto the device
c. In the debug terminal check the values received (see Debug_printf_view_KEIL_MDK.png)
