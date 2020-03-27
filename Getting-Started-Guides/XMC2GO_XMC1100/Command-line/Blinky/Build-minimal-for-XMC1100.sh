#! /bin/bash

/opt/gcc-arm/bin/arm-none-eabi-gcc -DXMC1100_Q024x0064 -mthumb -mcpu=cortex-m0 -Og -c -I ./include ./source/main.c ./lib/xmc_gpio.c ./setup/system_XMC1100.c ./setup/startup_XMC1100.S

/opt/gcc-arm/bin/arm-none-eabi-gcc -Wl,-Map=main.map -Wl,--gc-sections -mthumb -mcpu=cortex-m0 -T ./setup/XMC1100x0064.ld ./main.o ./xmc_gpio.o ./system_XMC1100.o ./startup_XMC1100.o -o main.elf

/opt/gcc-arm/bin/arm-none-eabi-objcopy -O binary main.elf main.bin

/opt/gcc-arm/bin/arm-none-eabi-size main.elf

mkdir output-of-Build-minimal-for-XMC1100

mv *.o *.map *.elf *.bin ./output-of-Build-minimal-for-XMC1100
