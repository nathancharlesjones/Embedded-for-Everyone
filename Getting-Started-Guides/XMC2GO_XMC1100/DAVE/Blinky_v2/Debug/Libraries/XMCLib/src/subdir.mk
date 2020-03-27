################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/XMCLib/src/xmc1_eru.c \
../Libraries/XMCLib/src/xmc1_flash.c \
../Libraries/XMCLib/src/xmc1_gpio.c \
../Libraries/XMCLib/src/xmc1_rtc.c \
../Libraries/XMCLib/src/xmc1_scu.c \
../Libraries/XMCLib/src/xmc_acmp.c \
../Libraries/XMCLib/src/xmc_bccu.c \
../Libraries/XMCLib/src/xmc_can.c \
../Libraries/XMCLib/src/xmc_ccu4.c \
../Libraries/XMCLib/src/xmc_ccu8.c \
../Libraries/XMCLib/src/xmc_common.c \
../Libraries/XMCLib/src/xmc_eru.c \
../Libraries/XMCLib/src/xmc_gpio.c \
../Libraries/XMCLib/src/xmc_i2c.c \
../Libraries/XMCLib/src/xmc_i2s.c \
../Libraries/XMCLib/src/xmc_ledts.c \
../Libraries/XMCLib/src/xmc_math.c \
../Libraries/XMCLib/src/xmc_pau.c \
../Libraries/XMCLib/src/xmc_posif.c \
../Libraries/XMCLib/src/xmc_prng.c \
../Libraries/XMCLib/src/xmc_rtc.c \
../Libraries/XMCLib/src/xmc_spi.c \
../Libraries/XMCLib/src/xmc_uart.c \
../Libraries/XMCLib/src/xmc_usic.c \
../Libraries/XMCLib/src/xmc_vadc.c \
../Libraries/XMCLib/src/xmc_wdt.c 

OBJS += \
./Libraries/XMCLib/src/xmc1_eru.o \
./Libraries/XMCLib/src/xmc1_flash.o \
./Libraries/XMCLib/src/xmc1_gpio.o \
./Libraries/XMCLib/src/xmc1_rtc.o \
./Libraries/XMCLib/src/xmc1_scu.o \
./Libraries/XMCLib/src/xmc_acmp.o \
./Libraries/XMCLib/src/xmc_bccu.o \
./Libraries/XMCLib/src/xmc_can.o \
./Libraries/XMCLib/src/xmc_ccu4.o \
./Libraries/XMCLib/src/xmc_ccu8.o \
./Libraries/XMCLib/src/xmc_common.o \
./Libraries/XMCLib/src/xmc_eru.o \
./Libraries/XMCLib/src/xmc_gpio.o \
./Libraries/XMCLib/src/xmc_i2c.o \
./Libraries/XMCLib/src/xmc_i2s.o \
./Libraries/XMCLib/src/xmc_ledts.o \
./Libraries/XMCLib/src/xmc_math.o \
./Libraries/XMCLib/src/xmc_pau.o \
./Libraries/XMCLib/src/xmc_posif.o \
./Libraries/XMCLib/src/xmc_prng.o \
./Libraries/XMCLib/src/xmc_rtc.o \
./Libraries/XMCLib/src/xmc_spi.o \
./Libraries/XMCLib/src/xmc_uart.o \
./Libraries/XMCLib/src/xmc_usic.o \
./Libraries/XMCLib/src/xmc_vadc.o \
./Libraries/XMCLib/src/xmc_wdt.o 

C_DEPS += \
./Libraries/XMCLib/src/xmc1_eru.d \
./Libraries/XMCLib/src/xmc1_flash.d \
./Libraries/XMCLib/src/xmc1_gpio.d \
./Libraries/XMCLib/src/xmc1_rtc.d \
./Libraries/XMCLib/src/xmc1_scu.d \
./Libraries/XMCLib/src/xmc_acmp.d \
./Libraries/XMCLib/src/xmc_bccu.d \
./Libraries/XMCLib/src/xmc_can.d \
./Libraries/XMCLib/src/xmc_ccu4.d \
./Libraries/XMCLib/src/xmc_ccu8.d \
./Libraries/XMCLib/src/xmc_common.d \
./Libraries/XMCLib/src/xmc_eru.d \
./Libraries/XMCLib/src/xmc_gpio.d \
./Libraries/XMCLib/src/xmc_i2c.d \
./Libraries/XMCLib/src/xmc_i2s.d \
./Libraries/XMCLib/src/xmc_ledts.d \
./Libraries/XMCLib/src/xmc_math.d \
./Libraries/XMCLib/src/xmc_pau.d \
./Libraries/XMCLib/src/xmc_posif.d \
./Libraries/XMCLib/src/xmc_prng.d \
./Libraries/XMCLib/src/xmc_rtc.d \
./Libraries/XMCLib/src/xmc_spi.d \
./Libraries/XMCLib/src/xmc_uart.d \
./Libraries/XMCLib/src/xmc_usic.d \
./Libraries/XMCLib/src/xmc_vadc.d \
./Libraries/XMCLib/src/xmc_wdt.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/XMCLib/src/%.o: ../Libraries/XMCLib/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1100_Q024x0016 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1100_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

