/*
 * Copyright (C) 2014-2018 Infineon Technologies AG. All rights reserved.
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
 * @date 18 September,2018
 * @version 1.0.0
 *
 * History
 *
 * Version 1.0.0 
 * - Initial
 *
 */

#include <xmc_gpio.h>
#include <xmc_dma.h>
#include <xmc_uart.h>

// 1ms task which reads from the ring buffer and copies to the working buffer
#define TICKS_PER_SECOND 1000

#define BUFFER_SIZE 1024
static volatile uint8_t buffer[BUFFER_SIZE];
static volatile uint32_t buffer_idx = 0;

// Ring buffer using DMA
// The ring buffer is divided into two equal sized buffers
#define RING_BUFFER_SIZE 32
static volatile uint8_t ring_buffer[RING_BUFFER_SIZE];
static volatile uint8_t ring_buffer_cur = 0;

/* DMA linked list */
static __attribute__((aligned(32))) XMC_DMA_LLI_t dma_ll[2] =
{
  {
	.block_size = RING_BUFFER_SIZE / 2,
	.src_addr = (uint32_t)&(XMC_UART0_CH0->RBUF),
	.dst_addr = (uint32_t)&ring_buffer[0],
	.llp = &dma_ll[1],
	.enable_interrupt = true,
	.dst_transfer_width = XMC_DMA_CH_TRANSFER_WIDTH_8,
	.src_transfer_width = XMC_DMA_CH_TRANSFER_WIDTH_8,
	.dst_address_count_mode = XMC_DMA_CH_ADDRESS_COUNT_MODE_INCREMENT,
	.src_address_count_mode = XMC_DMA_CH_ADDRESS_COUNT_MODE_NO_CHANGE,
	.dst_burst_length = XMC_DMA_CH_BURST_LENGTH_1,
	.src_burst_length = XMC_DMA_CH_BURST_LENGTH_1,
	.transfer_flow = XMC_DMA_CH_TRANSFER_FLOW_P2M_DMA,
	.enable_dst_linked_list = true,
	.enable_src_linked_list = true,
  },
  {
	.block_size = RING_BUFFER_SIZE / 2,
	.src_addr = (uint32_t)&(XMC_UART0_CH0->RBUF),
	.dst_addr = (uint32_t)&ring_buffer[RING_BUFFER_SIZE / 2],
	.llp = &dma_ll[0],
	.enable_interrupt = true,
	.dst_transfer_width = XMC_DMA_CH_TRANSFER_WIDTH_8,
	.src_transfer_width = XMC_DMA_CH_TRANSFER_WIDTH_8,
	.dst_address_count_mode = XMC_DMA_CH_ADDRESS_COUNT_MODE_INCREMENT,
	.src_address_count_mode = XMC_DMA_CH_ADDRESS_COUNT_MODE_NO_CHANGE,
	.dst_burst_length = XMC_DMA_CH_BURST_LENGTH_1,
	.src_burst_length = XMC_DMA_CH_BURST_LENGTH_1,
	.transfer_flow = XMC_DMA_CH_TRANSFER_FLOW_P2M_DMA,
	.enable_dst_linked_list = true,
	.enable_src_linked_list = true,
  }
};

static const XMC_DMA_CH_CONFIG_t dma_ch_config =
{
  {
	.enable_interrupt = true,
	.dst_transfer_width = XMC_DMA_CH_TRANSFER_WIDTH_8,
	.src_transfer_width = XMC_DMA_CH_TRANSFER_WIDTH_8,
	.dst_address_count_mode = XMC_DMA_CH_ADDRESS_COUNT_MODE_INCREMENT,
	.src_address_count_mode = XMC_DMA_CH_ADDRESS_COUNT_MODE_NO_CHANGE,
	.dst_burst_length = XMC_DMA_CH_BURST_LENGTH_1,
	.src_burst_length = XMC_DMA_CH_BURST_LENGTH_1,
	.transfer_flow = XMC_DMA_CH_TRANSFER_FLOW_P2M_DMA,
  },
  .block_size = RING_BUFFER_SIZE / 2,
  .src_addr = (uint32_t)&(XMC_UART0_CH0->RBUF),
  .dst_addr = (uint32_t)&ring_buffer[0],
  .linked_list_pointer = &dma_ll[0],
  .transfer_type = XMC_DMA_CH_TRANSFER_TYPE_MULTI_BLOCK_SRCADR_LINKED_DSTADR_LINKED, /* Transfer type */
  .priority = XMC_DMA_CH_PRIORITY_0, /* Priority level */
  .src_handshaking = XMC_DMA_CH_SRC_HANDSHAKING_HARDWARE, /* Source handshaking */
  .src_peripheral_request = DMA0_PERIPHERAL_REQUEST_USIC0_SR0_0, /* Source peripheral trigger */
  .dst_handshaking = XMC_DMA_CH_DST_HANDSHAKING_SOFTWARE  /* Destination handshaking */
};

static const XMC_UART_CH_CONFIG_t uart_config =
{
  .baudrate = 115200,
  .data_bits = 8,
  .stop_bits = 1,
};

void SysTick_Handler(void)
{
  static uint32_t start = 0;

  uint32_t end = (ring_buffer_cur * (RING_BUFFER_SIZE / 2)) + XMC_DMA_CH_GetTransferredData(XMC_DMA0, 0);

  if ((start != end) && (buffer_idx < BUFFER_SIZE))
  {
    if (start < end)
    {
      memcpy((void *)&buffer[buffer_idx], (void *)&ring_buffer[start], end - start);
      buffer_idx += end - start;
    }
    else
    {
	  memcpy((void *)&buffer[buffer_idx], (void *)&ring_buffer[start], RING_BUFFER_SIZE - start);
	  buffer_idx += RING_BUFFER_SIZE - start;

      memcpy((void *)&buffer[buffer_idx], (void *)&ring_buffer[0], end);
      buffer_idx += end;
    }

    start = end;
  }
}

void dma_ch0_event_handler(XMC_DMA_CH_EVENT_t event)
{
  XMC_UNUSED_ARG(event);
  ring_buffer_cur ^= 1;
}

void GPDMA0_0_IRQHandler(void)
{
  XMC_DMA_IRQHandler(XMC_DMA0);
}

int main(void)
{
  /* Enable DMA module */
  XMC_DMA_Init(XMC_DMA0);
  XMC_DMA_CH_Init(XMC_DMA0, 0, &dma_ch_config);
  XMC_DMA_CH_EnableEvent(XMC_DMA0, 0, XMC_DMA_CH_EVENT_BLOCK_TRANSFER_COMPLETE);
  XMC_DMA_CH_SetEventHandler(XMC_DMA0, 0, dma_ch0_event_handler);
  XMC_DMA_CH_Enable(XMC_DMA0, 0);

  /* Enable DMA event handling */
  NVIC_SetPriority(GPDMA0_0_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(), 62, 0));
  NVIC_EnableIRQ(GPDMA0_0_IRQn);

  /* System timer configuration */
  SysTick_Config(SystemCoreClock / TICKS_PER_SECOND);

  /* UART configuration */
  XMC_UART_CH_Init(XMC_UART0_CH0, &uart_config);

  XMC_GPIO_SetMode(P1_4, XMC_GPIO_MODE_INPUT_TRISTATE);
  XMC_UART_CH_SetInputSource(XMC_UART0_CH0, XMC_UART_CH_INPUT_RXD, USIC0_C0_DX0_P1_4);

  /*Configure transmit FIFO*/
  XMC_USIC_CH_TXFIFO_Configure(XMC_UART0_CH0, 0U, XMC_USIC_CH_FIFO_SIZE_32WORDS, 0U);

  /* Set service request for receive interrupt */
  XMC_USIC_CH_SetInterruptNodePointer(XMC_UART0_CH0, XMC_USIC_CH_INTERRUPT_NODE_POINTER_RECEIVE, 0U);
  XMC_USIC_CH_SetInterruptNodePointer(XMC_UART0_CH0, XMC_USIC_CH_INTERRUPT_NODE_POINTER_ALTERNATE_RECEIVE, 0U);
  XMC_UART_CH_EnableEvent(XMC_UART0_CH0, XMC_UART_CH_EVENT_STANDARD_RECEIVE | XMC_UART_CH_EVENT_ALTERNATIVE_RECEIVE);

  XMC_UART_CH_Start(XMC_UART0_CH0);

  XMC_GPIO_SetMode(P1_5, (XMC_GPIO_MODE_t)((int32_t)XMC_GPIO_MODE_OUTPUT_PUSH_PULL | (int32_t)P1_5_AF_U0C0_DOUT0));

  /* Placeholder for user application code. The while loop below can be replaced with user application code. */
  while(1U);
}
