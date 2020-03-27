Description of example project
==============================
This example project depicts usage of WDT driver.

Hardware Setup
===============
XMC1200 Bootkit (No other satellite board required)

How to test the application
============================

Watchdog example in which the watchdog needs to be feed every second.
The example feeds the watchdog 25 times (see blinking LED), after that 
the device goes into reset since no more feeding occurs simulating a 
fault (see LED stays off).
 
LED is connected to P0.6

