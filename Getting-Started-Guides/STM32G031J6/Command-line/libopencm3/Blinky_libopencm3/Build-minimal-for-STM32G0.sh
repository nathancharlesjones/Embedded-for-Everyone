#! /bin/bash

arm-none-eabi-gcc -Os -g -mthumb -c -DSTM32G0 -Ilibopencm3-master/include  miniblink.c

arm-none-eabi-ld -Map miniblink.map -Tstm32g0_test.ld  miniblink.o -Llibopencm3-master/lib -lopencm3_stm32g0 -N -o miniblink.elf

arm-none-eabi-objcopy -O binary miniblink.elf miniblink.bin
