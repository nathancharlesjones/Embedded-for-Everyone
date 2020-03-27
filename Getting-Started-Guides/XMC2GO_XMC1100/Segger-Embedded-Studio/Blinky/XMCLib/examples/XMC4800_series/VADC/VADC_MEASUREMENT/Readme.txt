Description of example project
==============================
This is an example depicting usage of the ADC driver.
The ADC driver is used to configure various functional blocks of the
peripheral, setting up of a single entry queue and converting the lone
entry by means of a software generated queue conversion request periodically
in the SysTick handler. The SysTick timer is configured to fire every 10ms.
The results are send via UART and can be visualize in a PC using a terminal program

Hardware Setup
===============
XMC4700/XMC4800 Relax Kit
IO Pin : 14.7

How to test the application
============================
a. Import the project
b. Compile and flash the application onto the device
c. Add g_num_interrupts to the watch window
d. Run the application. 
e. Watch g_num_interrupts steadily increment
f. Attach a variable voltage source at P14_1 and observe the voltage in the terminal.

How to modify the application
==============================
a. To choose a different pin, identify the corresponding group and Channel. Update the macros
CHANNEL_NUMBER, VADC_GROUP_PTR and VADC_GROUP_ID accordingly.

b. To test on a board which has a different crystal frequency, simply update the macro CRYSTAL_FREQUENCY
to the correct value. 