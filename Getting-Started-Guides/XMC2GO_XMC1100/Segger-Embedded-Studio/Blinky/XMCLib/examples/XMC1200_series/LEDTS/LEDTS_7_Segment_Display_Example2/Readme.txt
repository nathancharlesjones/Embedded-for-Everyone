Description of example project
==============================
This example project demonstrates controlling eight 7-segment LED displays with shared cathodes,
and controlling three capacitive touch pads.

LEDTS APIs are used to configure one LEDTS module for activating and driving eight pieces of
7-segment LED displays, and another LEDTS module for controlling three capacitive touch pad inputs,
in a time-multiplexed manner.
Touch sensing analysis is performed using an averaging and filtering algorithm provided
in a library API called FindTouchedPad.

Hardware Setup
===============
XMC1200 Boot Kit
Eight 7-Segment LED Displays (refer to attached schematics for connection)
Three capacitive touch pads (refer to attached schematics for connection)

How to test the application
============================
a. Connect the LED displays and touch pads to the XMC1200 according to the schematics.
b. Connect the XMC1200 Boot Kit to a PC via USB.
c. Import the project.
d. Compile and flash the application onto the device.
e. Run the application.
f. LED Displays will toggle between "Hello..." and  "12345678".
g. Press on any of the touch pads for about 4 seconds to change to Touch Pad mode. The
   LED displays will turn blank upon mode change.
h. In Touch Pad Mode, tap on any touch pad. The LED displays will display the name of 
   the touch pad that was touched.
i. Press on any of the touch pads for about 4 seconds to change back to LED Display Mode.

How to modify the application
==============================
a. Change the display characters or modify the display pattern in the SysTick handler for
   LED Display Mode.
b. Change the display characters or modify the display pattern in the LEDTS1 Interrupt handler 
   for Touch Pad Mode.
   