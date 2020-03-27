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

#include "xmc_common.h"
#include "ring_buffer.h"

void ring_buffer_init(ring_buffer_t *const rb)
{
  rb->head = 0;
  rb->tail = 0;
}

int32_t ring_buffer_put(ring_buffer_t *const rb, uint8_t c)
{
  if (ring_buffer_is_full(rb))
  {
	  return -1;
  }

  rb->buffer[rb->head] = c;
  rb->head = (rb->head + 1) % rb->len;

  return 0;

}

int32_t ring_buffer_get(ring_buffer_t *const rb, uint8_t *const c)
{
  if (ring_buffer_is_empty(rb))
  {
  	return -1;
  }

  *c = rb->buffer[rb->tail];
  rb->tail = (rb->tail + 1) % rb->len;

  return 0;
}
