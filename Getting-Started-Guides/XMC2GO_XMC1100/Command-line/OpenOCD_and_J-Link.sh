#! /bin/bash

openocd -f /media/nathancharlesjones/Storage/ProgramFiles/openocd-git/tcl/interface/jlink.cfg -c "transport select swd" -f /media/nathancharlesjones/Storage/ProgramFiles/openocd-git/tcl/target/xmc1xxx.cfg -c "cortex_m reset_config sysresetreq" -c "reset_config srst_only" -c "adapter_khz 4000"
