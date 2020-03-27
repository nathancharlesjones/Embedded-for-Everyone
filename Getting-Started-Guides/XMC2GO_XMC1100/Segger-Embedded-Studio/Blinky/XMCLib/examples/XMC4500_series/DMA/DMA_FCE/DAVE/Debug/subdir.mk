################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Files/Projects/Git/XMCLib/examples/XMC4500_series/DMA/DMA_FCE/main.c 

OBJS += \
./main.o 

C_DEPS += \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
main.o: C:/Files/Projects/Git/XMCLib/examples/XMC4500_series/DMA/DMA_FCE/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4500_F144x1024 -I"C:/Files/Projects/Git/CMSIS/Include" -I"C:/Files/Projects/Git/CMSIS/Infineon/XMC4500_series/Include" -I"C:/Files/Projects/Git/XMCLib/inc" -I"$(PROJECT_LOC)/.." -O1 -ffunction-sections -fdata-sections -fno-common -Wall -Wextra -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -Wno-missing-field-initializers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

