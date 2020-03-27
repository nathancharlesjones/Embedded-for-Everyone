/*
 * Copyright (C) 2014 Infineon Technologies AG. All rights reserved.
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
 * @date 20 October,2015
 * @version 1.0.1
 *
 * @brief UART printf demo example
 *
 *
 * History <br>
 *
 * Version 1.0.0 Initial <br>
 * Version 1.0.1 Changed to avoid compiler warnings <br>
 */

#include <stdio.h>

#include "serial.h"

#define LED1 P5_9

void XMC_AssertHandler(const char *const msg, const char *const file, uint32_t line)
{
  printf("%s at line %u of %s\n", msg, (unsigned int)line, file);
  while(1);
}


int main(void)
{
  serial_init();

  /* Next line will fail assertion and a message is printed out */
  XMC_GPIO_SetOutputLevel(LED1, 0);

  while(1U);
}
