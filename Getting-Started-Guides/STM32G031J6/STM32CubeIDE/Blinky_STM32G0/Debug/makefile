################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Drivers/STM32G0xx_HAL_Driver/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Blinky_STM32G0.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Blinky_STM32G0.list \


# All Target
all: Blinky_STM32G0.elf secondary-outputs

# Tool invocations
Blinky_STM32G0.elf: $(OBJS) $(USER_OBJS) /media/nathancharlesjones/Storage/Scripts/STM32/G031J6/Blinky_STM32G0/STM32G031J6MX_FLASH.ld
	arm-none-eabi-gcc -o "Blinky_STM32G0.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m0plus -T"/media/nathancharlesjones/Storage/Scripts/STM32/G031J6/Blinky_STM32G0/STM32G031J6MX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Blinky_STM32G0.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Blinky_STM32G0.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Blinky_STM32G0.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
