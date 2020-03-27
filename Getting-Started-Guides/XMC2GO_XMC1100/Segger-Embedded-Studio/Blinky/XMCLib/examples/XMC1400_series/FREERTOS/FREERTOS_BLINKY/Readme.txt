XMC1400 Bootkit FreeRTOS example

Two threads are defined:
 - one blinking a LED task which blink every 500ms after taking the semaphore
 - another task waiting for 500ms and giving the semaphore

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

