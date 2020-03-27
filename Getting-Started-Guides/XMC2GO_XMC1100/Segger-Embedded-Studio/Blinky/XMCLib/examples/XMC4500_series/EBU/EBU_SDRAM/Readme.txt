EBU demo example

Description of example project
==============================
This example demonstrates proper initialization of external SDRAM and R/W Operation.

Hardware Setup
===============
XMC4500 CPU_45B-V1-02 (SDRAM Board)
LED Pin P5.2 as Output

How to test the application
============================
a. Import the project
b. Connect SWD Debugger to SDRAM Board (XMC4500 CPU_45B-V1-02)
c. Compile and flash the application onto the device
d. Run the application. 
e. See the LED which will be switched off if SDRAM test is pass.
    Otherwise LED will be flashing if SDRAM test is fail. 

Notes: The SDRAM Clock is equal to the system clock. Can be changed by SCU LLD APIs.
       Test time at 60 MHz SDRAM clock and TEST_SIZE = 10000000 is about 10 sec.
    