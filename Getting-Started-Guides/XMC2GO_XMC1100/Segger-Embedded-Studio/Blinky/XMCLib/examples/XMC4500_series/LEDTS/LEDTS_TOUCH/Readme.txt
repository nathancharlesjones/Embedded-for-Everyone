Description of example project
==============================
This example project demonstrates controlling two capacitive touch pads
and two LEDs for feedback.

LEDTS APIs are used to configure the LEDTS module for activating two touch pad inputs
and driving two indicator LEDs.
Touch sensing analysis is performed using an averaging and filtering algorithm provided
in a library API called FindTouchedPad.

Hardware Setup
===============
XMC4500 General Purpose Hexagon Board
XMC4500 Standard Human Machine Interface (HMI) Card

How to test the application
============================
a. Connect the two boards.
b. Connect the XMC4500 General Purpose Hexagon Board to a PC via USB.
c. Import the project.
d. Compile and flash the application onto the device.
e. Run the application. 
f. Tap the touch pads (T1 or T2) on the Standard HMI Card. Their respective LEDs will toggle
   ON/OFF upon touch.

How to modify the application
==============================
a. Change the response behavior of the LEDs in the LEDTS interrupt service routine.

