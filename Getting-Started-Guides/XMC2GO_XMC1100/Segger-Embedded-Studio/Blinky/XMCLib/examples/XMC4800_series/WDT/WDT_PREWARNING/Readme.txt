Description of example project
==============================
Watchdog example in which the watchdog needs to be feed every second
The example feeds the watchdog 10 times (see blinking LED1).
The first crossing of the upper bound triggers the an alarm
since pre-warning is enabled. The alarm signal is routed as request to the SCU,
where it is promoted to NMI in this example. In the NMI handler the LED2 is toggle.
Only the next overflow results a reset request.
After the reset the device checks the reason for the last reset.
If it was due to a failure to feed the WDT the LED1 will blink rapidly.
 
Hardware Setup
===============
XMC4700/XMC4800 Relax Kit

How to test the application
============================
a. Import the project
b. Compile and flash the application onto the device
d. Run the application. 

