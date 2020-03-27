Description of example project
==============================
This example project shows EtherCAT (slave) and Etehrnet (master) configuration.

The Ethernet MAC (master) is used to transmit a BRD EtherCAT frame. 
The frame is transmitted into port 0 of the EtherCAT slave.
The EtherCAT slave will increment the working counter.
Since port1 is open, the frame is travels back to the master.
The master will retransmit the received frame indefinetively.

Hardware Setup
===============
XMC4800 Relax Kit 
Ethernet cable connecting the Ethernet connector and the IN port of the EtherCAT top board.

How to test the application
============================
a. Import the project 
b. Compile and flash the application onto the device
c. Run the application. 
d. The LEDs on the ECAT top board will start indicates the higher byte of the working counter.




