Description of example project
==============================
This example project depicts usage of SCU and ADC drivers.
The ADC conversion are trigger by a CCU8 timer period event.

Hardware Setup
===============
XMC4500 XMC4500 CPU Board (No other satellite board required)
IO Pin : 14.1

How to test the application
============================
a. Import the project
b. Compile and flash the application onto the device
c. Add g_num_interrupts to the watch window
d. Run the application. 
e. Watch g_num_interrupts steadily increment
f. Rotate the potentiometer and watch the conversion result change.

How to modify the application
==============================
a. To choose a different pin, identify the corresponding group and Channel. Update the macros
CHANNEL_NUMBER, VADC_GROUP_PTR and VADC_GROUP_ID accordingly.

b. To test on a board which has a different crystal frequency, simply update the macro CRYSTAL_FREQUENCY
to the correct value. 