Description of example project
==============================
This example project depicts usage of BCCU driver.

The BCCU driver is used to enable and configure the BCCU module to be used.
BCCU APIs are used to configure a BCCU Global, channel and dimming engine resources in run-time. 

The GPIO driver is used to configure the port pin settings.
The Systick timer is used to trigger a 1 sec interrupt.

Hardware Setup
===============
XMC1200 Kit + inLight RGB LED card

How to test the application
============================
a. Import the project
b. Compile and flash the application onto the device
c. Run the application. 
d. Lamp color slowly changes to red
e. Lamp color slowly changes to green
f. Lamp color slowly changes to blue
g. Lamp color slowly changes to white
h. Lamp slowly dims down to 0%
i. Lamp slowly dims up to 25%