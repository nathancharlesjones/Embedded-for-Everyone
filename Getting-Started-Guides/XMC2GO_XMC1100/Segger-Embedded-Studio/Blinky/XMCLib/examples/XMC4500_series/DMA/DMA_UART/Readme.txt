Description of example project
==============================
This example project shows how to use the DMA driver to transfer data from RAM to UART freeing the CPU for other tasks.

Hardware Setup
===============
XMC4500 Relax Kit
Connect PC_RxD to P1.5
Connect PC_TxD to P1.4
Use a teminal program and configure the COM port using 115200 baud rate, 8 data bits, 1 stop bit, no parity.

How to test the application
============================
a. Import the project
b. Compile and flash the application onto the device
c. Run the application. 
d. In the terminal program appears chars from 0 to 0xff and then from 0xff to 0.


