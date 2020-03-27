/*
 * Copyright (C) 2016-2019 Infineon Technologies AG. All rights reserved.
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

/**
 * @file
 * @date 29 Apr, 2019
 * @version 1.0.0
 *
 * @brief XMC1400 Bootkit I2C EEPROM example
 *
 * History
 * =======
 *
 * Version 1.0.0 
 * - Initial
 *
 */

#include <xmc_common.h>
#include <stdlib.h>

#include "eeprom.h"

#define DATA_LEN 16

int main(void)
{
  uint8_t read_data[DATA_LEN];
  uint8_t write_data[DATA_LEN];
 
  eeprom_init();

  srand(0);
  for (int i = 0; i < DATA_LEN; ++i)
  {
	  write_data[i] = rand();
  }

  eeprom_write(1, write_data, DATA_LEN);
  eeprom_read(1, read_data, DATA_LEN);

  if (memcmp(write_data, read_data, DATA_LEN) != 0)
  {
	  while(1);
  }

  /* Placeholder for user application code. The while loop below can be replaced with user application code. */
  while(1U)
  {

  }
}
