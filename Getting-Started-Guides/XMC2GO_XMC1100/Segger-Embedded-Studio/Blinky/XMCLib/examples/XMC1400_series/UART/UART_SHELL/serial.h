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

#ifndef SERIAL_H
#define SERIAL_H

#include "xmc_uart.h"
#include "xmc_gpio.h"
#include "ring_buffer.h"

#define SERIAL_BAUDRATE 115200

#define SERIAL_UART XMC_UART0_CH1
#define SERIAL_TX_PIN P1_2
#define SERIAL_TX_PIN_AF (XMC_GPIO_MODE_t)((int32_t)XMC_GPIO_MODE_OUTPUT_PUSH_PULL | (int32_t)P1_2_AF_U0C1_DOUT0)
#define SERIAL_RX_PIN P1_3
#define SERIAL_RX_INPUT USIC0_C1_DX0_P1_3
#define SERIAL_RX_IRQN IRQ9_IRQn

#define SERIAL_BUFFER_SIZE 128
extern ring_buffer_t serial_buffer;

#ifdef __cplusplus
extern "C" {
#endif

void serial_init(void);

#ifdef __cplusplus
}
#endif

#endif
