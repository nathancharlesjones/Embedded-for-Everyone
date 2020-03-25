#! /bin/bash

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -I ./include -fdata-sections -ffunction-sections ./source/main.c -o main.o

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -I ./include -fdata-sections -ffunction-sections ./source/clock_config.c -o clock_config.o

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -I ./include -fdata-sections -ffunction-sections ./source/fsl_clock.c -o fsl_clock.o

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -I ./include -fdata-sections -ffunction-sections ./source/fsl_reset.c -o fsl_reset.o

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -I ./include -fdata-sections -ffunction-sections ./source/fsl_gpio.c -o fsl_gpio.o

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -I ./include -fdata-sections -ffunction-sections ./setup/system_LPC845.c -o system_LPC845.o

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -I ./include -fdata-sections -ffunction-sections ./source/fsl_common.c -o fsl_common.o

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -I ./include -fdata-sections -ffunction-sections ./source/fsl_power.c -o fsl_power.o

/opt/gcc-arm/bin/arm-none-eabi-gcc -DCPU_LPC845M301JBD48 -mthumb -mcpu=cortex-m0 -Og -c -I ./include -fdata-sections -ffunction-sections ./setup/startup_LPC845.S -o startup_LPC845.o

/opt/gcc-arm/bin/arm-none-eabi-gcc -Wl,-Map=main.map -specs=nano.specs -mthumb -mcpu=cortex-m0 -T ./setup/LPC845_flash.ld -lc -lm -lnosys -Wl,--gc-sections ./main.o ./clock_config.o ./fsl_clock.o ./fsl_reset.o ./fsl_gpio.o ./system_LPC845.o ./fsl_common.o ./fsl_power.o ./startup_LPC845.o -o main.elf

/opt/gcc-arm/bin/arm-none-eabi-objcopy -O binary main.elf main.bin

/opt/gcc-arm/bin/arm-none-eabi-size main.elf

mkdir output-of-Build-minimal-for-LPC845

mv *.o *.map *.elf *.bin ./output-of-Build-minimal-for-LPC845
