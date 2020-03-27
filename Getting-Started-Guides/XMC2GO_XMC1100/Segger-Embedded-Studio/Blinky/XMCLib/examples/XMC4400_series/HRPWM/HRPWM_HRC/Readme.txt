DESCRIPTION:
HRC_Example: This example demonstrates the HRPWM and in particular its subunit HRC
that is responsible for the fine (150ps) adjustment of the PWM
The example is configuring a CCU8 and a HRC0 and the maintaining a fixed CCU8 configuration 
(fixed duty cycle and frequency), the HRC is varying the compare1 value. 
The duty cycle can be seen to move smoothly in steps of 150ps

REQUIREMENTS:
XMC4400 CPU board (CPU_44A_V2)

SETUP:Connect XMC4400 CPU Board (CPU_44A_V2)

HOW TO USE THE PROJECT:

1) Connect oscilloscope probes to pins P0.2 (direct output) and P0.5 (complementary signal)
 in the ACT connector of the Hexagon Board
2) Download the project to XMC4400 Controller and run it

OBSERVATIONS:
1. Duty cycle of signal is sweeping in 150 ps steps

