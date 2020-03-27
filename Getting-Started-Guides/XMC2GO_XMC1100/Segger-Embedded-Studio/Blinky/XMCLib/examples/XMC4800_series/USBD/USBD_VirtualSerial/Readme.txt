Communications Device Class demonstration application
=====================================================

Overview
--------
This gives a simple reference application for implementing a CDC device acting as a virtual serial port.

Supported Platforms
-------------------
Infineon XMC4700/XMC4800 Relax Kit

http://www.infineon.com/cms/en/product/evaluation-boards/KIT_XMC48_RELAX_ECAT_V1/productType.html?productType=5546d46250cc1fdf0150f6bdd1236ec8
http://www.infineon.com/cms/en/product/evaluation-boards/KIT_XMC47_RELAX_V1/productType.html?productType=5546d46250cc1fdf0150f6bdcddb6ec7

Hardware Requirements
---------------------
None

Software Requirements
---------------------
Before running this demo for the first time on a new computer, you will need to supply the driver for the Host side.
When running under Windows, please install the Signed Driver (.INF file) located in VirtualSerial_Signed_Package_Driver folder. 

A serial terminal installed in your PC, i.e. Tera Term or Putty.

Getting Started
---------------
Download the program to the target board using one of the provided project files for the supported IDE.

Either press the reset button on your board or launch the debugger in your IDE to begin running the demo.

Open a serial terminal using the new available COM port with these settings:
 - 115200 baud rate
 - 8 data bits
 - No parity
 - One stop bit
 - No flow control

Any character typed in the terminal is echoed back by the microcontroller.


