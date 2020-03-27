/**
 * @file ADC.c
 * @date 2016-10-19
 *
 * @cond
 *********************************************************************************************************************
 * ADC interface for XMC1400 Boot Kit v1.0.0
 *
 * Copyright (c) 2015-2016, Infineon Technologies AG
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,are permitted provided that the
 * following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list of conditions and the following
 * disclaimer.
 *
 * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following
 * disclaimer in the documentation and/or other materials provided with the distribution.
 *
 * Neither the name of the copyright holders nor the names of its contributors may be used to endorse or promote
 * products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * To improve the quality of the software, users are encouraged to share modifications, enhancements or bug fixes with
 * Infineon Technologies AG dave@infineon.com).
 *********************************************************************************************************************
 * @endcond
 *
 */

#include "xmc_gpio.h"
#include "xmc_vadc.h"
#include "Board_ADC.h"

#define ADC_RESOLUTION        12        /* Number of A/D converter bits       */
#define POTI                  P2_5
#define POTI_VADC_GROUP       VADC_G1
#define POTI_VADC_GROUP_NUM   1
#define POTI_VADC_CHANNEL_NUM 7
/**
  \fn          int32_t ADC_Initialize (void)
  \brief       Initialize Analog-to-Digital Converter
  \returns
   - \b  0: function succeeded
   - \b -1: function failed
*/
int32_t ADC_Initialize (void)
{
  /* Initialization data of VADC Global resources */
  XMC_VADC_GLOBAL_CONFIG_t vadc_global_config =
  {
    .class0 =
    {
      .conversion_mode_standard = XMC_VADC_CONVMODE_12BIT,
      .sample_time_std_conv     = 3U,
    },
    .class1 =
    {
      .conversion_mode_standard = XMC_VADC_CONVMODE_12BIT,
      .sample_time_std_conv     = 3U,
    },
    .wait_for_read_mode = true
  };

  XMC_VADC_BACKGROUND_CONFIG_t vadc_background_config =
  {
    .enable_auto_scan  = true
  };

  XMC_VADC_CHANNEL_CONFIG_t vadc_channel_config =
  {
     .alias_channel = XMC_VADC_CHANNEL_ALIAS_DISABLED,
     .use_global_result = true
  };

  XMC_GPIO_CONFIG_t gpio_config =
  {
    .mode = XMC_GPIO_MODE_INPUT_TRISTATE
  };

  XMC_GPIO_Init(POTI, &gpio_config);

  /* Provide clock to VADC and initialize the VADC global registers. */
  XMC_VADC_GLOBAL_Init(VADC, &vadc_global_config);

  /* Set VADC group to normal operation mode (VADC kernel). */
  XMC_VADC_GROUP_SetPowerMode(POTI_VADC_GROUP, XMC_VADC_GROUP_POWERMODE_NORMAL);

  /* Calibrate the VADC. Make sure you do this after all used VADC groups
   * are set to normal operation mode. */
  XMC_VADC_GLOBAL_StartupCalibration(VADC);

  /* Initialize the background source hardware. The gating mode is set to
   * ignore to pass external triggers unconditionally.*/
  XMC_VADC_GLOBAL_BackgroundInit(VADC, &vadc_background_config);

  /* Initialize the channel unit. */
  XMC_VADC_GROUP_ChannelInit(POTI_VADC_GROUP, POTI_VADC_CHANNEL_NUM, &vadc_channel_config);

  /* Add a channel to the background source. */
  XMC_VADC_GLOBAL_BackgroundAddChannelToSequence(VADC, POTI_VADC_GROUP_NUM, POTI_VADC_CHANNEL_NUM);

  return 0;
}

/**
  \fn          int32_t ADC_Uninitialize (void)
  \brief       De-initialize Analog-to-Digital Converter
  \returns
   - \b  0: function succeeded
   - \b -1: function failed
*/
int32_t ADC_Uninitialize (void)
{
  return 0;
}

/**
  \fn          int32_t ADC_StartConversion (void)
  \brief       Start conversion
  \returns
   - \b  0: function succeeded
   - \b -1: function failed
*/
int32_t ADC_StartConversion (void)
{
  // Generates conversion request
  XMC_VADC_GLOBAL_BackgroundTriggerConversion(VADC);

  return 0;
}

/**
  \fn          int32_t ADC_ConversionDone (void)
  \brief       Check if conversion finished
  \returns
   - \b  0: conversion finished
   - \b -1: conversion in progress
*/
int32_t ADC_ConversionDone (void)
{
  return ((XMC_VADC_GROUP_IsConverterBusy(POTI_VADC_GROUP) == XMC_VADC_GROUP_STATE_BUSY) ? -1 : 0);
}

/**
  \fn          int32_t ADC_GetValue (void)
  \brief       Get converted value
  \returns
   - <b> >=0</b>: converted value
   - \b -1: conversion in progress or failed
*/
int32_t ADC_GetValue (void)
{
  //Return the result value of the result register
  if (ADC_ConversionDone() != 0) return -1;
  return (int32_t) XMC_VADC_GLOBAL_GetResult(VADC);
}

/**
  \fn          uint32_t ADC_GetResolution (void)
  \brief       Get resolution of Analog-to-Digital Converter
  \returns     Resolution (in bits)
*/
uint32_t ADC_GetResolution (void)
{
  return ADC_RESOLUTION;
}
