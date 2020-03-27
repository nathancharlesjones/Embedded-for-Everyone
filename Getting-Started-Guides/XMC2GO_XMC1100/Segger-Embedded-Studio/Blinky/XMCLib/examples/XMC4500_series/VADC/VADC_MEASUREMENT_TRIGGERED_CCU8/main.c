/*
 * Copyright (C) 2015-2018 Infineon Technologies AG. All rights reserved.
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

/*********************************************************************************************************************
 * HEADER FILES
 ********************************************************************************************************************/
#include <stdio.h>

#include <xmc_ccu8.h>
#include <xmc_vadc.h>
#include <xmc_scu.h>
#include <xmc_gpio.h>
#include <xmc_uart.h>

/*********************************************************************************************************************
 * MACROS
 ********************************************************************************************************************/
#define CCU8_SLICE_PTR         CCU80_CC81
#define CCU8_MODULE_PTR        CCU80
#define MODULE_NUMBER     (0U)
#define SLICE_NUMBER      (1U)

/* Pin P14.1 is measured and converted */
#define CHANNEL_NUMBER    (1U)
#define VADC_GROUP_PTR    (VADC_G0)

/* Register result */
#define RES_REG_NUMBER    (0)

/* UART pins */
#define UART_TX P1_5
#define UART_RX P1_4

#define TICKS_PER_SECOND 1000

#define LED1 P3_9

/*********************************************************************************************************************
 * GLOBAL DATA
 ********************************************************************************************************************/

/* Initialization data of VADC Global resources */
static const XMC_VADC_GLOBAL_CONFIG_t g_global_config =
{
  .clock_config =
  {
    .analog_clock_divider  = 3,
    .msb_conversion_clock  = 0,
    .arbiter_clock_divider = 1
  },
};

/* Initialization data of a VADC group */
static const XMC_VADC_GROUP_CONFIG_t g_group_config =
{
  .class1 =
  {
    .conversion_mode_standard 	 =  XMC_VADC_CONVMODE_12BIT,
    .sample_time_std_conv 	     = 3U,
  }
};

XMC_VADC_QUEUE_CONFIG_t g_queue_config =
{
  .trigger_signal = XMC_VADC_REQ_TR_CCU80_SR2,
  .trigger_edge = XMC_VADC_TRIGGER_EDGE_RISING,
  .external_trigger = true

};

/* Channel configuration data */
static const XMC_VADC_CHANNEL_CONFIG_t  g_channel_config =
{
  .input_class       = XMC_VADC_CHANNEL_CONV_GROUP_CLASS1,
  .result_reg_number = RES_REG_NUMBER,
  .alias_channel     = XMC_VADC_CHANNEL_ALIAS_DISABLED
};

/* Result configuration data */
static const XMC_VADC_RESULT_CONFIG_t g_result_config =
{
  .wait_for_read_mode = true
};

/* Queue Entry */
static const XMC_VADC_QUEUE_ENTRY_t g_queue_entry =
{
  .channel_num = CHANNEL_NUMBER,
  .refill_needed = true, /* Refill is needed */
  .generate_interrupt = true, /* Interrupt generation is needed */
  .external_trigger = true  /* External trigger is required */
};

static const XMC_UART_CH_CONFIG_t uart_config =
{
  .data_bits = 8U,
  .stop_bits = 1U,
  .baudrate = 115200U
};

static const XMC_CCU8_SLICE_COMPARE_CONFIG_t g_timer_object =
{
  .timer_mode          = XMC_CCU8_SLICE_TIMER_COUNT_MODE_EA,
  .monoshot            = XMC_CCU8_SLICE_TIMER_REPEAT_MODE_REPEAT,
  .prescaler_mode      = XMC_CCU8_SLICE_PRESCALER_MODE_NORMAL,
  .slice_status        = XMC_CCU8_SLICE_STATUS_CHANNEL_1,
  .prescaler_initval   = XMC_CCU8_SLICE_PRESCALER_1024
};

static const XMC_GPIO_CONFIG_t g_gpio_config =
{
  .mode = XMC_GPIO_MODE_OUTPUT_PUSH_PULL,
  .output_level = XMC_GPIO_OUTPUT_LEVEL_HIGH,
  .output_strength = XMC_GPIO_OUTPUT_STRENGTH_MEDIUM
};

/*********************************************************************************************************************
 * MAIN APPLICATION
 ********************************************************************************************************************/

/* Result handler */
void VADC0_G0_0_IRQHandler(void)
{
  XMC_VADC_RESULT_SIZE_t result;

  /* Read the result register */
  result = XMC_VADC_GROUP_GetResult(VADC_GROUP_PTR, RES_REG_NUMBER);

  /* Acknowledge the interrupt */
  XMC_VADC_GROUP_ChannelClearEvent(VADC_GROUP_PTR, CHANNEL_NUMBER);

  printf("ADC: %d\r\n", result);
}

/* Trigger periodically a conversion request */
void SysTick_Handler(void)
{
  static uint32_t ticks = 0;

  ticks++;
  if (ticks == TICKS_PER_SECOND)
  {
	XMC_GPIO_ToggleOutput(LED1);
	ticks = 0;
  }
}

/* Application entry point */
int main(void)
{
  XMC_GPIO_Init(LED1, &g_gpio_config);

  XMC_UART_CH_Init(XMC_UART0_CH0, &uart_config);
  XMC_UART_CH_SetInputSource(XMC_UART0_CH0, XMC_UART_CH_INPUT_RXD, USIC0_C0_DX0_P1_4);
  XMC_UART_CH_Start(XMC_UART0_CH0);

  XMC_GPIO_SetMode(UART_TX, XMC_GPIO_MODE_OUTPUT_PUSH_PULL_ALT2);
  XMC_GPIO_SetMode(UART_RX, XMC_GPIO_MODE_INPUT_TRISTATE);

  /* Initialize the VADC global registers */
  XMC_VADC_GLOBAL_Init(VADC, &g_global_config);

  /* Configure a conversion kernel */
  XMC_VADC_GROUP_Init(VADC_GROUP_PTR, &g_group_config);

  XMC_VADC_GROUP_QueueInit(VADC_GROUP_PTR, &g_queue_config);

  /* Configure a channel belonging to the aforesaid conversion kernel */
  XMC_VADC_GROUP_ChannelInit(VADC_GROUP_PTR,CHANNEL_NUMBER, &g_channel_config);

  /* Configure a result resource belonging to the aforesaid conversion kernel */
  XMC_VADC_GROUP_ResultInit(VADC_GROUP_PTR, RES_REG_NUMBER, &g_result_config);

  /* Add the channel to the queue */
  XMC_VADC_GROUP_QueueInsertChannel(VADC_GROUP_PTR, g_queue_entry);

  /* Connect Request Source Event to the NVIC nodes */
  XMC_VADC_GROUP_ChannelSetEventInterruptNode(VADC_GROUP_PTR, CHANNEL_NUMBER, XMC_VADC_SR_GROUP_SR0);

  /* Enable IRQ */
  NVIC_SetPriority(VADC0_G0_0_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(), 63, 0));
  NVIC_EnableIRQ(VADC0_G0_0_IRQn);

  /* Enable the analog converters */
  XMC_VADC_GROUP_SetPowerMode(VADC_GROUP_PTR, XMC_VADC_GROUP_POWERMODE_NORMAL);

  /* Perform calibration of the converter */
  XMC_VADC_GLOBAL_StartupCalibration(VADC);

  XMC_CCU8_Init(CCU8_MODULE_PTR, XMC_CCU8_SLICE_MCMS_ACTION_TRANSFER_PR_CR);

  /* Get the slice out of idle mode */
  XMC_CCU8_EnableClock(CCU8_MODULE_PTR, SLICE_NUMBER);

  /* Start the prescaler and restore clocks to slices */
  XMC_CCU8_StartPrescaler(CCU8_MODULE_PTR);

  /* Initialize the Slice */
  XMC_CCU8_SLICE_CompareInit(CCU8_SLICE_PTR, &g_timer_object);

  /* Enable compare match and period match events */
  XMC_CCU8_SLICE_EnableEvent(CCU8_SLICE_PTR, XMC_CCU8_SLICE_IRQ_ID_PERIOD_MATCH);

  /* Connect period match event to SR2 */
  XMC_CCU8_SLICE_SetInterruptNode(CCU8_SLICE_PTR, XMC_CCU8_SLICE_IRQ_ID_PERIOD_MATCH, XMC_CCU8_SLICE_SR_ID_2);

  /* Program a very large value into PR and CR */
  XMC_CCU8_SLICE_SetTimerPeriodMatch(CCU8_SLICE_PTR, 12000U);
  XMC_CCU8_SLICE_SetTimerCompareMatch(CCU8_SLICE_PTR, XMC_CCU8_SLICE_COMPARE_CHANNEL_1, 6000U);
  XMC_CCU8_EnableShadowTransfer(CCU8_MODULE_PTR, XMC_CCU8_SHADOW_TRANSFER_SLICE_1);

  XMC_CCU8_SLICE_StartTimer(CCU8_SLICE_PTR);

  /* System timer configuration */
  SysTick_Config(SystemCoreClock / TICKS_PER_SECOND);

  while(1);
}
