#! /bin/bash

arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -Iinclude -fdata-sections -ffunction-sections source/main.c source/clock_config.c source/fsl_clock.c source/fsl_reset.c source/fsl_gpio.c setup/system_LPC845.c source/fsl_common.c source/fsl_power.c setup/startup_LPC845.S

arm-none-eabi-gcc main.o clock_config.o fsl_clock.o fsl_reset.o fsl_gpio.o system_LPC845.o fsl_common.o fsl_power.o startup_LPC845.o -Wl,-Map=main.map -specs=nano.specs -lc -lnosys -mthumb -mcpu=cortex-m0 -Tsetup/LPC845_flash.ld -Wl,--gc-sections -o main.elf

arm-none-eabi-objcopy -O binary main.elf main.bin

arm-none-eabi-size main.elf

mkdir output-of-Build-minimal-for-LPC845

mv *.o *.map *.elf *.bin ./output-of-Build-minimal-for-LPC845
