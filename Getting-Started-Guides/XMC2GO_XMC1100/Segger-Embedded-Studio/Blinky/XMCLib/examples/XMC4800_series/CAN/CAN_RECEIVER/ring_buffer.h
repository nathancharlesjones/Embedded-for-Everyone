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

#ifndef RING_BUFFER_H
#define RING_BUFFER_H

#define RING_BUFFER_DEF(x, sz)\
	uint8_t x##_data[sz];\
	ring_buffer_t x = {\
	  .buffer = x##_data,\
      .head = 0,\
	  .tail = 0,\
	  .len = sz\
	}

typedef struct ring_buffer
{
  uint8_t *buffer;
  volatile uint32_t head;
  volatile uint32_t tail;
  const uint32_t len;
} ring_buffer_t;

void ring_buffer_init(ring_buffer_t *const rb);
int32_t ring_buffer_put(ring_buffer_t *const rb, uint8_t c);
int32_t ring_buffer_get(ring_buffer_t *const rb, uint8_t *const c);

__STATIC_INLINE bool ring_buffer_is_empty(ring_buffer_t *const rb)
{
  uint32_t head = rb->head;
  uint32_t tail = rb->tail;
  return (head == tail);
}

__STATIC_INLINE bool ring_buffer_is_full(ring_buffer_t *const rb)
{
  uint32_t head = rb->head;
  uint32_t tail = rb->tail;
  return (((head + 1) % rb->len) == tail);
}

__STATIC_INLINE uint32_t ring_buffer_avail(ring_buffer_t *const rb)
{
  uint32_t head = rb->head;
  uint32_t tail = rb->tail; 
  return (head - tail) % rb->len;
}

#endif
