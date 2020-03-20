################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_acomp.c \
../drivers/fsl_adc.c \
../drivers/fsl_capt.c \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_crc.c \
../drivers/fsl_ctimer.c \
../drivers/fsl_dac.c \
../drivers/fsl_dma.c \
../drivers/fsl_gpio.c \
../drivers/fsl_i2c.c \
../drivers/fsl_iap.c \
../drivers/fsl_inputmux.c \
../drivers/fsl_mrt.c \
../drivers/fsl_pint.c \
../drivers/fsl_power.c \
../drivers/fsl_reset.c \
../drivers/fsl_sctimer.c \
../drivers/fsl_spi.c \
../drivers/fsl_swm.c \
../drivers/fsl_syscon.c \
../drivers/fsl_usart.c \
../drivers/fsl_wkt.c \
../drivers/fsl_wwdt.c 

OBJS += \
./drivers/fsl_acomp.o \
./drivers/fsl_adc.o \
./drivers/fsl_capt.o \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_crc.o \
./drivers/fsl_ctimer.o \
./drivers/fsl_dac.o \
./drivers/fsl_dma.o \
./drivers/fsl_gpio.o \
./drivers/fsl_i2c.o \
./drivers/fsl_iap.o \
./drivers/fsl_inputmux.o \
./drivers/fsl_mrt.o \
./drivers/fsl_pint.o \
./drivers/fsl_power.o \
./drivers/fsl_reset.o \
./drivers/fsl_sctimer.o \
./drivers/fsl_spi.o \
./drivers/fsl_swm.o \
./drivers/fsl_syscon.o \
./drivers/fsl_usart.o \
./drivers/fsl_wkt.o \
./drivers/fsl_wwdt.o 

C_DEPS += \
./drivers/fsl_acomp.d \
./drivers/fsl_adc.d \
./drivers/fsl_capt.d \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_crc.d \
./drivers/fsl_ctimer.d \
./drivers/fsl_dac.d \
./drivers/fsl_dma.d \
./drivers/fsl_gpio.d \
./drivers/fsl_i2c.d \
./drivers/fsl_iap.d \
./drivers/fsl_inputmux.d \
./drivers/fsl_mrt.d \
./drivers/fsl_pint.d \
./drivers/fsl_power.d \
./drivers/fsl_reset.d \
./drivers/fsl_sctimer.d \
./drivers/fsl_spi.d \
./drivers/fsl_swm.d \
./drivers/fsl_syscon.d \
./drivers/fsl_usart.d \
./drivers/fsl_wkt.d \
./drivers/fsl_wwdt.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC845M301JBD48 -DCPU_LPC845M301JBD48_cm0plus -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I../board -I../source -I../ -I../drivers -I../device -I../CMSIS -I../component/uart -I../utilities -I../board/boards -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


