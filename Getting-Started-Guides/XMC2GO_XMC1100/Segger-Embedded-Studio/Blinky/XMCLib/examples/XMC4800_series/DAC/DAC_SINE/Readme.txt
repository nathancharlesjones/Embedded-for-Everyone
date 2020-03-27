Description of example project
==============================
This example project depicts usage of DAC drivers.

Hardware Setup
===============
XMC4800/XMC4700 Relax Kit
This example demonstrate two of five DAC configurations. 
It generates an analog sine wave on DAC0 Output (P14.8) and a static analog value on DAC1 Output (P14.9).

How to test the application
============================
To change the frequency and amplitude the function DAC_Update() is called
periodical. DAC_Update() only has to be called to change frequency or
amplitude not for basic sine wave generation.

The value in beats[index] defines after how many function calls
the frequency and amplitude will be updated. The value in melody[index]
defines the new frequency and if the amplitude have to be set to minimum.
 
 