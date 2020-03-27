/*
 * Copyright (C) 2019 Infineon Technologies AG. All rights reserved.
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
 * @date 29 May, 2019
 * @version 1.0.0
 *
 * @brief XMC4300 EtherCAT Relax kit external triggered SPI transfer
 *
 * This examples shows how to trigger externally an SPI word transfer
 * 
 * History <br>
 *
 * Version 1.0.0 Initial <br>
 *
 */

 
#include <xmc_common.h>
#include <xmc_gpio.h>
#include <xmc_spi.h>

#define SPI_CH XMC_SPI1_CH1
#define ADC_BUSY P0_9
#define SCLK     P0_10
#define MOSI     P0_1
#define CS       P0_2
#define MISO     P0_0

const XMC_SPI_CH_CONFIG_t spi_channel_config =
{
  .baudrate = 100000U,
  .bus_mode = XMC_SPI_CH_BUS_MODE_MASTER,
  .selo_inversion = XMC_SPI_CH_SLAVE_SEL_INV_TO_MSLS,
  .parity_mode = XMC_USIC_CH_PARITY_MODE_NONE
};

int main(void)
{
  XMC_GPIO_SetMode(ADC_BUSY, XMC_GPIO_MODE_OUTPUT_PUSH_PULL);
  XMC_GPIO_SetMode(MISO, XMC_GPIO_MODE_INPUT_PULL_UP);

  XMC_SPI_CH_Init(SPI_CH, &spi_channel_config);

  XMC_SPI_CH_SetFrameLength(SPI_CH, 16U);
  XMC_SPI_CH_SetWordLength(SPI_CH, 16U);
  XMC_SPI_CH_SetBitOrderMsbFirst(SPI_CH);

  /*Enable transmission when TDV = 1 and the selected edge of the DX2 signal occurs*/
  XMC_USIC_CH_SetInputTriggerCombinationMode(SPI_CH, XMC_USIC_CH_INPUT_DX2, XMC_USIC_CH_INPUT_COMBINATION_MODE_RISING_EDGE);
  XMC_USIC_CH_EnableTBUFDataValidTrigger(SPI_CH);

  /* Set input source for input stage dx0 (receive pin) */
  XMC_SPI_CH_SetInputSource(SPI_CH, XMC_SPI_CH_INPUT_DIN0, USIC1_C1_DX0_P0_0);
  /* Set input source for input stage dx2 */
  XMC_SPI_CH_SetInputSource(SPI_CH, XMC_SPI_CH_INPUT_SLAVE_SELIN, USIC1_C1_DX2_P0_9);

  /* Enable Frame End Mode */
  XMC_SPI_CH_EnableFEM(SPI_CH);
  /* Configure the clock polarity and clock delay */
  XMC_SPI_CH_ConfigureShiftClockOutput(SPI_CH, XMC_SPI_CH_BRG_SHIFT_CLOCK_PASSIVE_LEVEL_0_DELAY_DISABLED,
                                               XMC_SPI_CH_BRG_SHIFT_CLOCK_OUTPUT_SCLK);
  /* Disable all Slave Select lines */
  XMC_SPI_CH_DisableSlaveSelect(SPI_CH);
  /* Establish Slave Select signal polarity */
   XMC_SPI_CH_SetSlaveSelectPolarity(SPI_CH, XMC_SPI_CH_SLAVE_SEL_INV_TO_MSLS);
  /* Set Select Control */;
  XMC_SPI_CH_DisableSlaveSelectCodedMode(SPI_CH);
  /* Configure the leading/trailing delay for the MSLS signal */
  XMC_SPI_CH_SetSlaveSelectDelay(SPI_CH, 2U);
  /* Enable the Slave Select 0 Signal */
  XMC_SPI_CH_EnableSlaveSelect(SPI_CH, XMC_SPI_CH_SLAVE_SELECT_1);

  XMC_USIC_CH_TXFIFO_Configure(SPI_CH, 0U, XMC_USIC_CH_FIFO_SIZE_16WORDS, 0U);

  XMC_SPI_CH_Start(SPI_CH);

  XMC_GPIO_SetOutputHigh(CS);
  XMC_GPIO_SetMode(CS, XMC_GPIO_MODE_OUTPUT_PUSH_PULL | P0_2_AF_U1C1_SELO1);
  XMC_GPIO_SetMode(SCLK, XMC_GPIO_MODE_OUTPUT_PUSH_PULL | P0_10_AF_U1C1_SCLKOUT);
  XMC_GPIO_SetMode(MOSI, XMC_GPIO_MODE_OUTPUT_PUSH_PULL | P0_1_AF_U1C1_DOUT0);

  XMC_SPI_CH_ClearStatusFlag(SPI_CH, XMC_SPI_CH_STATUS_FLAG_RECEIVE_INDICATION | XMC_SPI_CH_STATUS_FLAG_ALTERNATIVE_RECEIVE_INDICATION);
  XMC_SPI_CH_Transmit(SPI_CH, 0xFFFF, XMC_SPI_CH_MODE_STANDARD);
  XMC_GPIO_SetOutputHigh(ADC_BUSY);
  while ((XMC_SPI_CH_GetStatusFlag(SPI_CH) & (XMC_SPI_CH_STATUS_FLAG_RECEIVE_INDICATION | XMC_SPI_CH_STATUS_FLAG_ALTERNATIVE_RECEIVE_INDICATION)) == 0);
  XMC_GPIO_SetOutputLow(ADC_BUSY);

  XMC_SPI_CH_ClearStatusFlag(SPI_CH, XMC_SPI_CH_STATUS_FLAG_RECEIVE_INDICATION | XMC_SPI_CH_STATUS_FLAG_ALTERNATIVE_RECEIVE_INDICATION);
  XMC_SPI_CH_Transmit(SPI_CH, 0xFFFF, XMC_SPI_CH_MODE_STANDARD);
  XMC_GPIO_SetOutputHigh(ADC_BUSY);
  while ((XMC_SPI_CH_GetStatusFlag(SPI_CH) & (XMC_SPI_CH_STATUS_FLAG_RECEIVE_INDICATION | XMC_SPI_CH_STATUS_FLAG_ALTERNATIVE_RECEIVE_INDICATION)) == 0);
  XMC_GPIO_SetOutputLow(ADC_BUSY);

  /* Placeholder for user application code. The while loop below can be replaced with user application code. */
  while(1U);
}
