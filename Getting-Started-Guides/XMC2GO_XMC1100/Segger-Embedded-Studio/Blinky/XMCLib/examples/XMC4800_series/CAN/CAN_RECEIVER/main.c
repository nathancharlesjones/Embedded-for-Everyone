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

#include "xmc_can.h"

#define LED1 P5_9

// MCAN Node 1
#define CAN_TXD P1_12
#define CAN_RXD P1_13

#define CAN_FREQUENCY 144000000

/* CAN Bit time */
const XMC_CAN_NODE_NOMINAL_BIT_TIME_CONFIG_t baud = 
{
  .can_frequency = CAN_FREQUENCY,
  .baudrate = 500000,
  .sample_point = 8000,
  .sjw = 1,
};

/* CAN message */
XMC_CAN_MO_t CAN_message =
{
  .can_mo_ptr = CAN_MO0,
  .can_priority = XMC_CAN_ARBITRATION_MODE_IDE_DIR_BASED_PRIO_2,
  .can_identifier = 0xff,
  .can_id_mask = 0xff,
  .can_id_mode = XMC_CAN_FRAME_TYPE_STANDARD_11BITS,
  .can_ide_mask = 1,
  .can_data_length = 2,
  .can_mo_type = XMC_CAN_MO_TYPE_RECMSGOBJ
};

/*This function is the Interrupt Event Handler for the CAN Node*/
void CAN0_7_IRQHandler(void)
{
  /* Receive the mensagge in the CAN_message MO*/
  XMC_CAN_MO_Receive(&CAN_message);
	
  printf("Button state: %d\n", CAN_message.can_data_word[0]);
	
  /* Switch on LED1  to indicate that the requested message is received*/
  XMC_GPIO_ToggleOutput(LED1);
}

int main(void)
{
  serial_init();
  printf("Waiting for CAN messages\n");

  /*Configure CAN Module*/
  XMC_CAN_InitEx(CAN, XMC_CAN_CANCLKSRC_FPERI, CAN_FREQUENCY);

  /*Configure CAN Node baudrate*/
  XMC_CAN_NODE_NominalBitTimeConfigure(CAN_NODE1, &baud);
	
  XMC_CAN_NODE_EnableConfigurationChange(CAN_NODE1);
  XMC_CAN_NODE_SetInitBit(CAN_NODE1);

  /* Configure CAN NODE input pin */
  XMC_GPIO_SetMode(CAN_RXD, XMC_GPIO_MODE_INPUT_TRISTATE);
  XMC_CAN_NODE_SetReceiveInput(CAN_NODE1, CAN_NODE1_RXD_P1_13);

  /*Message Configuration*/
  XMC_CAN_MO_Config(&CAN_message);

  /*Allocate MO in Node List*/
  XMC_CAN_AllocateMOtoNodeList(CAN, 1, 0);
	
  /*Enable transmit interrupt */
  XMC_CAN_MO_EnableEvent(&CAN_message, XMC_CAN_MO_EVENT_RECEIVE);
	
  /*Set transmit interrupt*/
  XMC_CAN_MO_SetEventNodePointer(&CAN_message, XMC_CAN_MO_POINTER_EVENT_RECEIVE, 7);

  /*Enable nvic node*/
  NVIC_EnableIRQ(CAN0_7_IRQn);

  XMC_CAN_NODE_DisableConfigurationChange(CAN_NODE1);
  XMC_CAN_NODE_ResetInitBit(CAN_NODE1);
	
  /* Configure CAN NODE output pin */
  XMC_GPIO_SetMode(CAN_TXD, (XMC_GPIO_MODE_t)((int32_t)XMC_GPIO_MODE_OUTPUT_PUSH_PULL | (int32_t)P1_12_AF_CAN_N1_TXD));

  /* Configure LED pin */
  XMC_GPIO_SetMode(LED1, XMC_GPIO_MODE_OUTPUT_PUSH_PULL);

  while(1);
}

