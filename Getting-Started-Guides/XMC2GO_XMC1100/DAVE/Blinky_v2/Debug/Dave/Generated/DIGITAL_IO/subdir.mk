################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dave/Generated/DIGITAL_IO/digital_io.c \
../Dave/Generated/DIGITAL_IO/digital_io_conf.c 

OBJS += \
./Dave/Generated/DIGITAL_IO/digital_io.o \
./Dave/Generated/DIGITAL_IO/digital_io_conf.o 

C_DEPS += \
./Dave/Generated/DIGITAL_IO/digital_io.d \
./Dave/Generated/DIGITAL_IO/digital_io_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Dave/Generated/DIGITAL_IO/%.o: ../Dave/Generated/DIGITAL_IO/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1100_Q024x0016 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1100_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

