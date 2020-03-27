 XMC4700/4800 RelaxKit FreeRTOS example

Two threads are defined:
 - one toggling an LED1 every time it acquire the semaphore
 - another sampling the BUTTON1 every 500ms and giving the other task the semaphore if the button is not pressed.
   Therefore if the button is pressed the LED will stop blinkining.

Project files are provided for the supported toolchains DAVE, Keil MDK v5 and IAR ARM Workbench.
For Keil MDK v5 double click on the .uvprojx file in the ARM folder
For IAR ARM Workbench double click on the .eww file in the IAR folder
For DAVE:
 - Open DAVE
 - Select File > Import ...
 - Select Infineon > DAVE Project. Click Next button
 - Select "Select Root Directory", click on Browse... button and select the DAVE folder in the example folder
 - Ensure "Copy Projects Into Workspace" in not checked. Click Finish button

The project files required that FreeRTOS folder should be placed in the same root folder where XMCLib folder is located. 

