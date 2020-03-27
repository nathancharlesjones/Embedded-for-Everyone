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

#include "eeprom.h"

#include "xmc_gpio.h"
#include "xmc_i2c.h"

#define EEPROM_I2C_CHANNEL XMC_I2C0_CH0
#define EEPROM_I2C_ADDR    (0xA0)
#define EEPROM_PAGE_LENGTH 16

#define EEPROM_SDA P2_1
#define EEPROM_SCL P2_0

XMC_I2C_CH_CONFIG_t i2c_channel_config =
{
  .baudrate = 400000U,
};

void eeprom_init(void)
{
  XMC_GPIO_CONFIG_t pin_config;

  XMC_I2C_CH_Init(EEPROM_I2C_CHANNEL, &i2c_channel_config);

  XMC_I2C_CH_SetInputSource(EEPROM_I2C_CHANNEL, XMC_I2C_CH_INPUT_SDA, USIC0_C0_DX0_P2_1);
  XMC_I2C_CH_SetInputSource(EEPROM_I2C_CHANNEL, XMC_I2C_CH_INPUT_SCL, USIC0_C0_DX1_P2_0);

  XMC_I2C_CH_Start(EEPROM_I2C_CHANNEL);

  pin_config.output_level = XMC_GPIO_OUTPUT_LEVEL_HIGH;
  pin_config.mode = (XMC_GPIO_MODE_t)((int32_t)XMC_GPIO_MODE_OUTPUT_OPEN_DRAIN | (int32_t)P2_1_AF_U0C0_DOUT0);
  XMC_GPIO_Init(EEPROM_SDA, &pin_config);

  pin_config.mode = (XMC_GPIO_MODE_t)((int32_t)XMC_GPIO_MODE_OUTPUT_OPEN_DRAIN | (int32_t)P2_0_AF_U0C0_SCLKOUT);
  XMC_GPIO_Init(EEPROM_SCL, &pin_config);

}

void eeprom_write(uint16_t address, uint8_t *data, uint32_t size)
{
  uint32_t buffer_size;
  uint8_t buffer[EEPROM_PAGE_LENGTH + 1];

  while (size > 0)
  {
    buffer[0] = address & 0xffU;
    buffer_size = EEPROM_PAGE_LENGTH - (address & (EEPROM_PAGE_LENGTH - 1));
    if (buffer_size > size)
	  {
		  buffer_size = size;
	  }
    memcpy(&buffer[1], data, buffer_size);

    XMC_I2C_CH_ClearStatusFlag(EEPROM_I2C_CHANNEL, XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED);
    XMC_I2C_CH_MasterStart(EEPROM_I2C_CHANNEL, EEPROM_I2C_ADDR | ((address & 0x300U) >> 7), XMC_I2C_CH_CMD_WRITE);
    
    /* wait for ACK */
	  while ((XMC_I2C_CH_GetStatusFlag(EEPROM_I2C_CHANNEL) & XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED) == 0U);

	  /* send data, byte by byte */
    uint32_t buffer_index = 0;
	  while (buffer_index < (buffer_size + 1))
	  {
	    XMC_I2C_CH_ClearStatusFlag(EEPROM_I2C_CHANNEL, XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED);
	    XMC_I2C_CH_MasterTransmit(EEPROM_I2C_CHANNEL, buffer[buffer_index]);
	    /* wait for ACK */
  	  while ((XMC_I2C_CH_GetStatusFlag(EEPROM_I2C_CHANNEL) & XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED) == 0U);

      buffer_index++;
    }
    XMC_I2C_CH_MasterStop(EEPROM_I2C_CHANNEL);

    /* polling on ACK to wait internal write is finished */
    while (true)
    {
      XMC_I2C_CH_ClearStatusFlag(EEPROM_I2C_CHANNEL, XMC_I2C_CH_STATUS_FLAG_NACK_RECEIVED | XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED);
      XMC_I2C_CH_MasterStart(EEPROM_I2C_CHANNEL, EEPROM_I2C_ADDR | ((address & 0x300U) >> 7), XMC_I2C_CH_CMD_WRITE);

      uint32_t status;
      do
      {
    	status = XMC_I2C_CH_GetStatusFlag(EEPROM_I2C_CHANNEL);
      }
      while ((status & (XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED | XMC_I2C_CH_STATUS_FLAG_NACK_RECEIVED)) == 0U);

      if ((status & (XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED | XMC_I2C_CH_STATUS_FLAG_NACK_RECEIVED)) == XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED)
      {
    	XMC_I2C_CH_MasterStop(EEPROM_I2C_CHANNEL);
    	break;
      }
      else
      {
   	    XMC_I2C_CH_ClearStatusFlag(EEPROM_I2C_CHANNEL, 0xFFFFFFFFU);
   	    XMC_USIC_CH_SetTransmitBufferStatus(EEPROM_I2C_CHANNEL, XMC_USIC_CH_TBUF_STATUS_SET_IDLE);
      }
    }

    address += buffer_size;
    data += buffer_size;
    size -= buffer_size;

  }

}

void eeprom_read(uint16_t address, uint8_t *data, uint32_t size)
{
  /* send 1st byte address */
  XMC_I2C_CH_ClearStatusFlag(EEPROM_I2C_CHANNEL, XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED);
  XMC_I2C_CH_MasterStart(EEPROM_I2C_CHANNEL, EEPROM_I2C_ADDR | ((address & 0x300U) >> 7), XMC_I2C_CH_CMD_WRITE);

  /* wait for ACK */
  while ((XMC_I2C_CH_GetStatusFlag(EEPROM_I2C_CHANNEL) & XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED) == 0U);

  /* send 2nd byte address */
  XMC_I2C_CH_ClearStatusFlag(EEPROM_I2C_CHANNEL, XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED);
  XMC_I2C_CH_MasterTransmit(EEPROM_I2C_CHANNEL, address & 0xffU);

  /* wait for ACK */
  while ((XMC_I2C_CH_GetStatusFlag(EEPROM_I2C_CHANNEL) & XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED) == 0U);

  /* start reading */
  XMC_I2C_CH_ClearStatusFlag(EEPROM_I2C_CHANNEL, XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED);
  XMC_I2C_CH_MasterRepeatedStart(EEPROM_I2C_CHANNEL, EEPROM_I2C_ADDR | ((address & 0x300U) >> 7), XMC_I2C_CH_CMD_READ);

  /* wait for ACK */
  while ((XMC_I2C_CH_GetStatusFlag(EEPROM_I2C_CHANNEL) & XMC_I2C_CH_STATUS_FLAG_ACK_RECEIVED) == 0U);

  /* receive data, byte by byte */
  uint32_t data_index = 0;
  while (data_index < size)
  {
	XMC_I2C_CH_ClearStatusFlag(EEPROM_I2C_CHANNEL, XMC_I2C_CH_STATUS_FLAG_ALTERNATIVE_RECEIVE_INDICATION | XMC_I2C_CH_STATUS_FLAG_RECEIVE_INDICATION);

	if (data_index == (size - 1))
	{
      XMC_I2C_CH_MasterReceiveNack(EEPROM_I2C_CHANNEL);
	}
	else
	{
	  XMC_I2C_CH_MasterReceiveAck(EEPROM_I2C_CHANNEL);
	}

    while ((XMC_I2C_CH_GetStatusFlag(EEPROM_I2C_CHANNEL) & (XMC_I2C_CH_STATUS_FLAG_ALTERNATIVE_RECEIVE_INDICATION | XMC_I2C_CH_STATUS_FLAG_RECEIVE_INDICATION)) == 0U);

	data[data_index++] = XMC_I2C_CH_GetReceivedData(EEPROM_I2C_CHANNEL);
  }

  XMC_I2C_CH_MasterStop(EEPROM_I2C_CHANNEL);
}

