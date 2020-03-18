#! /bin/bash

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Os -g -c -I ./ main.c clock_config.c fsl_clock.c fsl_reset.c fsl_gpio.c system_LPC845.c fsl_common.c fsl_power.c startup_LPC845.S

/opt/gcc-arm/bin/arm-none-eabi-gcc -Wl,-Map=main.map -specs=nosys.specs -mthumb -mcpu=cortex-m0 -T LPC845_flash.ld main.o clock_config.o fsl_clock.o fsl_reset.o fsl_gpio.o system_LPC845.o fsl_common.o fsl_power.o startup_LPC845.o -o main.elf

/opt/gcc-arm/bin/arm-none-eabi-objcopy -O binary main.elf main.bin
