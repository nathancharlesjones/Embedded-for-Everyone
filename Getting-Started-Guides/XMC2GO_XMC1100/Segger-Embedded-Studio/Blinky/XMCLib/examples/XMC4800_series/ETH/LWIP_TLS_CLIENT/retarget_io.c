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

#include <stdio.h>
#include "serial.h"

#if defined(__GNUC__)

int _write(int fd, const void *buf, size_t count)
{
  (void)fd;

  for (size_t i = 0; i < count; ++i)
  {
    XMC_UART_CH_Transmit(SERIAL_UART, *(const uint8_t *)buf);
    buf++;
  }
  return count;
}

int _read(int fd, void *buf, size_t count)
{
  int char_cnt = 0;
  (void)fd;

  for (size_t i = 0; i < count; ++i)
  {
	if (ring_buffer_get(&serial_buffer, (uint8_t *)buf) != 0)
	{
	  break;
	}

    char_cnt++;

    /* Stop reading if CR (Ox0D) character is received */
    if (*(uint8_t *)buf == 0x0DU)
    {
      /* New line character (CR) received ? */
      *(uint8_t*)buf = '\n';           /* Yes, convert LF to '\n' char. */
      break;                           /* Stop loop and return received char(s) */
    }

    buf++;
  }

  return char_cnt;
}
#endif

#if defined(__CC_ARM)

/**
  Get a character from stdin
 
  \return     The next character from the input, or -1 on read error.
*/
int stdin_getchar (void) {
	uint8_t val;
	
  if (ring_buffer_get(&serial_buffer, &val) != 0)
  {
    return -1;
  }

  return val;
}

/**
  Put a character to the stdout
 
  \param[in]   ch  Character to output
  \return          The character written, or -1 on write error.
*/
int stdout_putchar (int ch) {
  XMC_UART_CH_Transmit(SERIAL_UART, ch);
  return (1);
}
#endif

#if defined(__ICCARM__)
size_t __write(int Handle, const unsigned char * Buf, size_t Bufsize)
{
  for (size_t i = 0; i < Bufsize; ++i)
  {
    XMC_UART_CH_Transmit(SERIAL_UART, Buf[i]);
  }
  return Bufsize;
}

int __read(int Handle, const unsigned char * Buf, size_t Bufsize)
{
  int char_cnt = 0;

  for (size_t i = 0; i < Bufsize; ++i)
  {
	  if (ring_buffer_get(&serial_buffer, (uint8_t *)Buf) != 0)
	  {
	    break;
	  }

    char_cnt++;

    /* Stop reading if CR (Ox0D) character is received */
    if (*(uint8_t *)Buf == 0x0DU)
    {
      /* New line character (CR) received ? */
      *(uint8_t*)Buf = '\n';           /* Yes, convert LF to '\n' char. */
      break;                           /* Stop loop and return received char(s) */
    }

    Buf++;
  }

  return char_cnt;
}

#endif

