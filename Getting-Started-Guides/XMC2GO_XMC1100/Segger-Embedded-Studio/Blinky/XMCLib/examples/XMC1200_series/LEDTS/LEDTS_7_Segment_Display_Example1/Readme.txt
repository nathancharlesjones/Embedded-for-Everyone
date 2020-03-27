Description of example project
==============================
This example project demonstrates controlling eight 7-segment LED displays with shared cathodes.

LEDTS APIs are used to configure the LEDTS module for activating and driving eight pieces of
7-segment LED displays in a time-multiplexed manner.

Hardware Setup
===============
XMC1200 Boot Kit
Eight 7-Segment LED Displays (refer to attached schematics for connection)

How to test the application
============================
a. Connect the LED displays to the XMC1200 according to the schematics.
b. Connect the XMC1200 Boot Kit to a PC via USB.
c. Import the project.
d. Compile and flash the application onto the device.
e. Run the application. 
f. LED Displays will toggle between "Hello..." and  "12345678".

How to modify the application
==============================
a. Change the display characters or modify the display pattern in the SysTick handler.

