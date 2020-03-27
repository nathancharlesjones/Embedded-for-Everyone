Description of example project
==============================
The example show how to concatenate to CCU4x slice timers.
The example provides an API (see timer.h) to treat both slices as a 32bit timer.
The timer has a resolution of 1/fCPU

In the example LED1 toggles at a frequency of 1Hz (polling the timer) and LED2 toogles at a frequency of 2Hz (using the user callback)

Hardware Setup
===============
XMC4800 Relax Kit 

How to test the application
============================
a. Import the project 
b. Compile and flash the application onto the device




