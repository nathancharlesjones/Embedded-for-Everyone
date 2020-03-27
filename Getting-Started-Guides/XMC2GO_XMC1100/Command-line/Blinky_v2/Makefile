# ------------------------------------------------
# Generic Makefile (based on gcc)
#
# ChangeLog :
#	2017-02-10 - Several enhancements + project update mode
#   2015-07-22 - first version
# ------------------------------------------------

######################################
# target
######################################
TARGET = Blinky_v2


######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -Og


#######################################
# paths
#######################################
# Build path
BUILD_DIR = build

######################################
# source
######################################
# C sources
C_SOURCES =  \
source/main.c \
XMCLib/src/xmc1_eru.c \
XMCLib/src/xmc1_flash.c \
XMCLib/src/xmc1_gpio.c \
XMCLib/src/xmc1_rtc.c \
XMCLib/src/xmc1_scu.c \
XMCLib/src/xmc4_eru.c \
XMCLib/src/xmc4_flash.c \
XMCLib/src/xmc4_gpio.c \
XMCLib/src/xmc4_rtc.c \
XMCLib/src/xmc4_scu.c \
XMCLib/src/xmc_acmp.c \
XMCLib/src/xmc_bccu.c \
XMCLib/src/xmc_can.c \
XMCLib/src/xmc_ccu4.c \
XMCLib/src/xmc_ccu8.c \
XMCLib/src/xmc_common.c \
XMCLib/src/xmc_dac.c \
XMCLib/src/xmc_dma.c \
XMCLib/src/xmc_dsd.c \
XMCLib/src/xmc_ebu.c \
XMCLib/src/xmc_ecat.c \
XMCLib/src/xmc_eru.c \
XMCLib/src/xmc_eth_mac.c \
XMCLib/src/xmc_eth_phy_dp83848.c \
XMCLib/src/xmc_eth_phy_ksz8031rnl.c \
XMCLib/src/xmc_eth_phy_ksz8081rnb.c \
XMCLib/src/xmc_fce.c \
XMCLib/src/xmc_gpio.c \
XMCLib/src/xmc_hrpwm.c \
XMCLib/src/xmc_i2c.c \
XMCLib/src/xmc_i2s.c \
XMCLib/src/xmc_ledts.c \
XMCLib/src/xmc_math.c \
XMCLib/src/xmc_pau.c \
XMCLib/src/xmc_posif.c \
XMCLib/src/xmc_prng.c \
XMCLib/src/xmc_rtc.c \
XMCLib/src/xmc_sdmmc.c \
XMCLib/src/xmc_spi.c \
XMCLib/src/xmc_uart.c \
XMCLib/src/xmc_usbd.c \
XMCLib/src/xmc_usbh.c \
XMCLib/src/xmc_usic.c \
XMCLib/src/xmc_vadc.c \
XMCLib/src/xmc_wdt.c \
CMSIS/Infineon/XMC1100_series/Source/system_XMC1100.c \




# ASM sources
ASM_SOURCES =  \
CMSIS/Infineon/XMC1100_series/Source/GCC/startup_XMC1100.S


#######################################
# binaries
#######################################
PREFIX = arm-none-eabi-
# The gcc compiler bin path can be either defined in make command via GCC_PATH variable (> make GCC_PATH=xxx)
# either it can be added to the PATH environment variable.
ifdef GCC_PATH
CC = $(GCC_PATH)/$(PREFIX)gcc
AS = $(GCC_PATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(GCC_PATH)/$(PREFIX)objcopy
SZ = $(GCC_PATH)/$(PREFIX)size
else
CC = $(PREFIX)gcc
AS = $(PREFIX)gcc -x assembler-with-cpp
CP = $(PREFIX)objcopy
SZ = $(PREFIX)size
endif
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# cpu
CPU = -mcpu=cortex-m0

# fpu
# NONE for Cortex-M0/M0+/M3

# float-abi


# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DXMC1100_Q024x0064


# AS includes
AS_INCLUDES =  \
-Iinclude \
-IXMCLib/inc \
-ICMSIS/Include \
-ICMSIS/Infineon/XMC1100_series/Include

# C includes
C_INCLUDES =  \
-Iinclude \
-IXMCLib/inc \
-ICMSIS/Include \
-ICMSIS/Infineon/XMC1100_series/Include/ \


# compile gcc flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS = $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
endif


# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"


#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = CMSIS/Infineon/XMC1100_series/Source/GCC/XMC1100x0064.ld

# libraries
LIBS = -lc -lm -lnosys 
LIBDIR = 
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.S=.o)))
vpath %.S $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir $@		

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)
  
#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

# *** EOF ***
