#! /bin/bash

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -g -c -I ./include ./source/main.c ./source/clock_config.c ./source/fsl_clock.c ./source/fsl_reset.c ./source/fsl_gpio.c ./setup/system_LPC845.c ./source/fsl_common.c ./source/fsl_power.c ./setup/startup_LPC845.S

/opt/gcc-arm/bin/arm-none-eabi-gcc -Wl,-Map=main.map -specs=nosys.specs -mthumb -mcpu=cortex-m0 -T ./setup/LPC845_flash.ld ./main.o ./clock_config.o ./fsl_clock.o ./fsl_reset.o ./fsl_gpio.o ./system_LPC845.o ./fsl_common.o ./fsl_power.o ./startup_LPC845.o -o main.elf

/opt/gcc-arm/bin/arm-none-eabi-objcopy -O binary main.elf main.bin

/opt/gcc-arm/bin/arm-none-eabi-size main.elf

mv *.o *.map *.elf *.bin ./output-of-Build-minimal-for-LPC845
