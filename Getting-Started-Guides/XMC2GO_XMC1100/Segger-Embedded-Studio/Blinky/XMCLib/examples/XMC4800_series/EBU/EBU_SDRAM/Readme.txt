EBU demo example

Description of example project
==============================
This example demonstrates proper initialization of external SDRAM and R/W Operation.

Hardware Setup
===============
XMC48 Automation board

How to test the application
============================
a. Import the project
b. Connect SWD Debugger to XMC48 Automation board
c. Compile and flash the application onto the device
d. Run the application. 
e. See the LED which should turn green if the SDRAM test is pass
   Otherwise LED will turn red

Notes: The SDRAM Clock is equal to fCPU/2 (72MHz)
       
    