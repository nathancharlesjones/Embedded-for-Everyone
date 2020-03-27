Description of example project
==============================
SCU HIB example

The device starts showing the LED1 on, and will enter internal hibernate after ~5s, indicated by the RESET led. 
After ~30s a wakeup event from the RTC will trigger and restart the device. 
Additionaly the input HIB_IO_0 can be used to wake up the device before expiring the 30s.

Hardware Setup
===============
XMC4200 Application Kit

How to test the application
============================
a. Import the project
b. Compile and flash the application onto the device
c. Run the application. 




 