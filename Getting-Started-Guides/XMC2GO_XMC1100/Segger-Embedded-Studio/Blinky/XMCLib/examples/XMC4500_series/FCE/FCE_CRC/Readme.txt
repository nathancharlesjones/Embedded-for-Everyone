Description of example project
==============================
FCE_Example: This makes use of the FCE driver for kernel usage. In this code, all 
4 kernels are used to demonstrate CRC32, CRC16 and CRC8 checksum calculation.

Description
==============================
Step 1: Using Kernel 0 for CRC32 check
Step 2: Using Kernel 1 for CRC32 check with automatic CRC Check comparison enabled.
Step 3: Using Kernel 1 for CRC32 check with automatic CRC Check comparison enabled. 
		Mismatch found as data used in incorrect.
Step 4: Using Kernel 2 for CRC16 check
Step 5: Using Kernel 3 for CRC8 check
Step 6: Using API to trigger a mismatch flag

Hardware Setup
===============
XMC4000 device 

How to test the application
============================
a. Import the project
b. Compile and flash the application onto the device
c. Run the application. 
d. In the debug window, user can set breakpoint to observe the values of variable.

How to modify the application
==============================
a. Change the input or the XMC_FCE_t structure settings.




