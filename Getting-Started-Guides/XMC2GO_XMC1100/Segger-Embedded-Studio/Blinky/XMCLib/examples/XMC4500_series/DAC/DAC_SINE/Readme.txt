Description of example project
==============================
This example project depicts usage of DAC drivers.

Hardware Setup
===============
XMC4500 Hexagon board / XMC4500 Relax Kit
This example demonstrate two of five DAC configurations. It generates an analog sine 
wave on DAC0 Output and a static analog value on DAC1 Output.
e.g. XMC44/45  P14.8 (DAC0),  P14.9 (DAC1)

How to test the application
============================
To change the frequency and amplitude the function DAC_Update() is called
periodical. DAC_Update() only has to be called to change frequency or
amplitude not for basic sine wave generation.

The value in beats[index] defines after how many function calls
the frequency and amplitude will be updated. The value in melody[index]
defines the new frequency and if the amplitude have to be set to minimum.
 
 