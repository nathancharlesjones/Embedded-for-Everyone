#! /bin/bash

openocd -f /media/nathancharlesjones/Storage/ProgramFiles/openocd-git/tcl/interface/cmsis-dap.cfg -c "transport select swd" -f /media/nathancharlesjones/Storage/ProgramFiles/openocd-git/tcl/target/lpc84x.cfg -c "cortex_m reset_config sysresetreq" -c "adapter_khz 4000"

# Issue "mon reset halt" after loading .elf in GDB
