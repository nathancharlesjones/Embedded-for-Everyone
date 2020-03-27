Generic HID device demonstration application
============================================

Overview
--------
This gives a simple reference application for implementing a generic HID device, 
using the basic USB HID drivers in all modern OSes (i.e. no special drivers required). 

Supported Platforms
-------------------
Infineon XMC4500 Relax Kit
http://www.infineon.com/cms/en/product/evaluation-boards/KIT_XMC45_RELAX_V1/productType.html?productType=db3a304437849205013813b23ac17763

Hardware Requirements
---------------------
None

Software Requirements
---------------------
To test the demo Python and its pywinusb library need to be installed in the host side.

You can write your own HID PC application also using C, https://github.com/signal11/hidapi

Getting Started
---------------
Download the program to the target board using one of the provided project files for the supported IDE.

Either press the reset button on your board or launch the debugger in your IDE to begin running the demo.

On start-up the system will automatically enumerate and function as a vendor HID device.

By default it accepts and sends up to 8 byte reports to and from a USB Host, 
and transmits the last sent report back to the host.

Run the python application "test_generic_hid_winusb.py" inside the HostTestApp folder 
in the Host. This script will send a continuous stream of generic reports to the device, 
to show a variable LED pattern on the Relax Kit board. Send and received report data is printed 
to the terminal.



