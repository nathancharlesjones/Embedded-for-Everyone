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

#include "serial.h"

#include "xmc_uart.h"
#include "xmc_gpio.h"

RING_BUFFER_DEF(serial_buffer, SERIAL_BUFFER_SIZE);

const XMC_UART_CH_CONFIG_t uart_config =
{
  .baudrate = SERIAL_BAUDRATE,
  .data_bits = 8,
  .stop_bits = 1,
};

void serial_init(void)
{
  XMC_UART_CH_Init(SERIAL_UART, &uart_config);

  XMC_GPIO_SetMode(SERIAL_RX_PIN, XMC_GPIO_MODE_INPUT_PULL_UP);
  XMC_UART_CH_SetInputSource(SERIAL_UART, XMC_UART_CH_INPUT_RXD, SERIAL_RX_INPUT);

  /* Set service request for receive interrupt */
  XMC_USIC_CH_SetInterruptNodePointer(SERIAL_UART, XMC_USIC_CH_INTERRUPT_NODE_POINTER_RECEIVE, 0U);
  XMC_USIC_CH_SetInterruptNodePointer(SERIAL_UART, XMC_USIC_CH_INTERRUPT_NODE_POINTER_ALTERNATE_RECEIVE, 0U);

  /*Set priority and enable NVIC node for receive interrupt*/
#if UC_FAMILY == XMC4
  NVIC_SetPriority(SERIAL_RX_IRQN, NVIC_EncodePriority(NVIC_GetPriorityGrouping(), 63, 0));
#else
  NVIC_SetPriority(SERIAL_RX_IRQN, 3);
#endif
  NVIC_EnableIRQ(SERIAL_RX_IRQN);

  XMC_UART_CH_EnableEvent(SERIAL_UART, XMC_UART_CH_EVENT_STANDARD_RECEIVE | XMC_UART_CH_EVENT_ALTERNATIVE_RECEIVE);

  XMC_UART_CH_Start(SERIAL_UART);

  XMC_GPIO_SetMode(SERIAL_TX_PIN, SERIAL_TX_PIN_AF);
}

void USIC0_0_IRQHandler(void)
{
  static uint8_t data;

  data = XMC_UART_CH_GetReceivedData(SERIAL_UART);

  ring_buffer_put(&serial_buffer, data);
}

