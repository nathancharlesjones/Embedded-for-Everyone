UART demo example

Description of example project
==============================
Send 251 bytes by USIC0_CH0 using TX FIFO size of 8 bytes and receiving the data in USIC1_CH0 using a RX FIFO 8 bytes size.
Transmission and reception are non blocking,TX and RX FIFO limit interrupts are being used.
If reception is successful the onboard LED 1 will be switched on, otherwise it will remain switched off.

===============
XMC4500 Relax Kit
LED1 Pin:1.1
Rx Pin : 2.15 , Tx Pin : 1.5 (Connect both ports with an external wire between )

