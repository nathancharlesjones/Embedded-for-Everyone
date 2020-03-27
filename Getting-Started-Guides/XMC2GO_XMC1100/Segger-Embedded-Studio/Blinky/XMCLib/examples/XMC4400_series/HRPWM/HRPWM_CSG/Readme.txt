DESCRIPTION:
This example project is to test the HRPWM-CSG LLD functions in static mode. 
A triangle waveform is generated with DAC integrated peripheral. The DAC output is connected
to the comparator input (user must connect). The comparator output signal
is used as start and stop signal for a CCU timer that generates a PWM.

REQUIRMENTS:
Hardware Boards Required:
XMC4400 CPU_44A_V2
UNI_EXT01-V2

HOW TO TEST:
Connect the UNI_EXT01-V2 board to the XMC4400 CPU_44A_V2 board on the ACT side.
Connect P14.8 (DAC output) to P1.0 (CSG0 input, C0INA). 
Connect the CCU80 slice 0 direct output,P0.5 to the Oscilloscope.

OBSERVATION:
The start/stop of the PWM signal generation is controlled by the CSG output. 

