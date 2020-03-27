Description of example project
==============================
This example project depicts usage of ACMP (Analog Comparator) driver.

ANACMP-1 is configured to receive Reference voltage on IN-P pin. Users 
may then modify IN-N pin (Port 2.6) and watch ANACMP1:CMP_OUT change 
accordingly.


Hardware Setup
===============
XMC1300 Bootkit (No other satellite board required)


How to test the application
============================
a. Import the project
b. Compile and flash the application onto the device
c. Run the application.
d. Connet VDD to P2.11 (ACMP_REF pin). 
e. Connect VDD to P2.6
f. Halt the debugger
g. CMP_OUT bit should report a 0 (V-Neg > V-Pos)
h. Connect GND to P2.6 now and resume debugging.
i. Halt the debugger and examine CMP_OUT of ANACMP1 register.
j. It must now report a 1 (V-Neg < V-Pos)

How to modify the application
==============================
a. To choose a different  comparator instance, please use the appropriate instance number.

