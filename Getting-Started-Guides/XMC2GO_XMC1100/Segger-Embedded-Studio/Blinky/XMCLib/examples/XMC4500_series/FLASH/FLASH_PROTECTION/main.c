/*
 * Copyright (C) 2018 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with
 * Infineon's microcontrollers.
 * This file can be freely distributed within development tools that are
 * supporting such microcontrollers.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS". NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */

#include <stdlib.h>     /* strtol */

#include <xmc_common.h>
#include <xmc_scu.h>
#include <xmc_flash.h>
#include <xmc_gpio.h>

#include "serial.h"
#include "shell.h"

#define LED1 P3_9

static void flash_protection_install_cmd(int32_t argc, char **argv)
{
  XMC_UNUSED_ARG(argc);

  if ((XMC_FLASH_GetStatus() & XMC_FLASH_STATUS_PROTECTION_INSTALLED) == 0)
  {
    /* if no protection is installed */
    XMC_FLASH_EraseUCB(XMC_FLASH_UCB0);
    XMC_FLASH_InstallProtection(0, XMC_FLASH_PROTECTION_READ_GLOBAL, strtol(argv[1], NULL, 16), strtol(argv[2], NULL, 16));
    XMC_FLASH_ConfirmProtection(0);
		
    shell_println("Resetting device...");
    XMC_SCU_RESET_ClearDeviceResetReason();
    NVIC_SystemReset();
  }	
  else
  {
	shell_println("ERROR: Protection already installed!!");
  }
}

static void flash_protection_uninstall_cmd(int32_t argc, char **argv)
{
  XMC_UNUSED_ARG(argc);

  if ((XMC_FLASH_GetStatus() & XMC_FLASH_STATUS_PROTECTION_INSTALLED) != 0)	
  {
    if (XMC_FLASH_VerifyReadProtection(strtol(argv[1], NULL, 16), strtol(argv[2], NULL, 16)))
	{
      shell_println("Protection disabled");
      
  	  shell_println("Erase UCB");
      XMC_FLASH_EraseUCB(XMC_FLASH_UCB0);
      
	  shell_println("Resetting device...");
      XMC_SCU_RESET_ClearDeviceResetReason();
      NVIC_SystemReset();
    }
  }
}

static void flash_protection_disable_cmd(int32_t argc, char **argv)
{
  XMC_UNUSED_ARG(argc);

  if ((XMC_FLASH_GetStatus() & XMC_FLASH_STATUS_PROTECTION_INSTALLED) != 0)	
  {
    if (XMC_FLASH_VerifyReadProtection(strtol(argv[1], NULL, 16), strtol(argv[2], NULL, 16)))
    {
      shell_println("Protection disabled");
    }
    else
    {
      shell_println("ERROR: A problem occur while disabling the read protection!!");
 	  }
  }
  else
  {
    shell_println("ERROR: Protection not yet installed!!");		
  }
}

static void flash_protection_resume_cmd(int32_t argc, char **argv)
{
  XMC_UNUSED_ARG(argc);
  XMC_UNUSED_ARG(argv);

  XMC_FLASH_ResumeProtection();
  shell_println("Protection re-enabled");
}

static void flash_protection_status_cmd(int32_t argc, char **argv)
{
  XMC_UNUSED_ARG(argc);
  XMC_UNUSED_ARG(argv);

  uint32_t status = XMC_FLASH_GetStatus();
  if ((status & XMC_FLASH_STATUS_PROTECTION_INSTALLED) != 0)
  {
    shell_println("Protection installed");
    if ((status & XMC_FLASH_STATUS_READ_PROTECTION_DISABLED_STATE) != 0)
    {
      shell_println("Read protection temporarily disabled");
	}
  }
  else
  {
	shell_println("Protection not installed");
  }
}

static void help_cmd(int32_t argc, char **argv)
{
  XMC_UNUSED_ARG(argc);
  XMC_UNUSED_ARG(argv);

  shell_help();
}

const shell_command_t cmd_table[] =
{
  {"help", 0u, 0u, help_cmd, "Display this help message", ""},
  {"install", 2u, 2u, flash_protection_install_cmd, "Install protection", "<passwd0> <passwd1>"},
  {"uninstall", 2u, 2u, flash_protection_uninstall_cmd, "Install protection", "<passwd0> <passwd1>"},
  {"disable", 2u, 2u, flash_protection_disable_cmd, "Disables protection temporarly", "<passwd0> <passwd1>"},
  {"resume", 0u, 0u, flash_protection_resume_cmd, "Reenables global read protection", ""},
  {"status", 0u, 0u, flash_protection_status_cmd, "Report flash protection status", ""},
  {0, 0u, 0u, 0, 0, 0}
};

void my_shell_init(void)
{
  const char DELIMITER_STR[] = "************************************************";

  shell_println("\r\n%s", DELIMITER_STR);
  shell_println(" %s", "Shell Application");
  shell_println(DELIMITER_STR);
  shell_println(" Version %s", "1.0.0");
  shell_println(" Built %s", __DATE__ " at " __TIME__);

  shell_println("\n Enter 'help' for command list.");
  shell_println("%s\n", DELIMITER_STR);

}

int main(void)
{
  XMC_GPIO_SetMode(LED1, XMC_GPIO_MODE_OUTPUT_PUSH_PULL);
  XMC_GPIO_SetOutputHigh(LED1);

  serial_init();

  shell_init(cmd_table, my_shell_init);
	
  if ((XMC_FLASH_GetStatus() & XMC_FLASH_STATUS_PROTECTION_INSTALLED) != 0)	
	{
    shell_println("Protection installed");
	}

  while (1)
  {
    shell_state_machine();
  }
}
