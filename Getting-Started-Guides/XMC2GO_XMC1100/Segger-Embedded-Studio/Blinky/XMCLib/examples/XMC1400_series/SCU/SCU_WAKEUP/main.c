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
 * @brief XMC1400 Bootkit SCU wakeup example
 *
 * History
 * =======
 *
 * Version 1.0.0 
 * - Initial
 *
 */

#include <xmc_gpio.h>
#include <xmc_eru.h>

#define LED P4_0
#define POT P2_5

static const XMC_ERU_ETL_CONFIG_t button_event_generator_config =
{
  .input = ERU0_ETL1_INPUTA_P2_5,
  .source = XMC_ERU_ETL_SOURCE_A,
  .edge_detection = XMC_ERU_ETL_EDGE_DETECTION_FALLING,
  .status_flag_mode = XMC_ERU_ETL_STATUS_FLAG_MODE_HWCTRL,
  .enable_output_trigger = true,
  .output_trigger_channel = XMC_ERU_ETL_OUTPUT_TRIGGER_CHANNEL0
};

static const XMC_ERU_OGU_CONFIG_t button_event_detection_config =
{
  .service_request = XMC_ERU_OGU_SERVICE_REQUEST_ON_TRIGGER
};

__STATIC_INLINE void delay(uint32_t cycles)
{
  while(--cycles)
  {
    __NOP();
  }
}

void IRQ3_Handler(void)
{
  XMC_GPIO_ToggleOutput(LED);

  // DO something
  delay(SystemCoreClock);

  XMC_GPIO_ToggleOutput(LED);

}

int main(void)
{
  XMC_ERU_ETL_Init(ERU0_ETL1, &button_event_generator_config);
  XMC_ERU_OGU_Init(ERU0_OGU0, &button_event_detection_config);

  XMC_GPIO_CONFIG_t config;

  config.mode = XMC_GPIO_MODE_OUTPUT_PUSH_PULL;
  config.output_level = XMC_GPIO_OUTPUT_LEVEL_HIGH;
  XMC_GPIO_Init(LED, &config);

  config.mode = XMC_GPIO_MODE_INPUT_PULL_UP;
  XMC_GPIO_Init(POT, &config);

  NVIC_SetPriority(IRQ3_IRQn, 3U);
  NVIC_EnableIRQ(IRQ3_IRQn);

#if ENABLE_DEEP_SLEEP_MODE == 1
  SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
#else
  SCB->SCR &= ~SCB_SCR_SLEEPDEEP_Msk;
#endif

  /* Enable sleep-on-exit feature */
  SCB->SCR |= SCB_SCR_SLEEPONEXIT_Msk;

  while(1)
  {
    __DSB();
    __WFI();
  }
}
