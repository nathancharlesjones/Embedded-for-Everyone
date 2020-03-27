#include <Board_ADC.h>
#include <xmc_gpio.h>
#include <xmc_can.h>

#define TICKS_PER_SECOND 10

#define LED1 P4_0

// MCAN Node 1
#define CAN_TXD P4_9
#define CAN_RXD P4_8

#define CAN_FREQUENCY 20000000

#define OSCHP_MODE_XTAL 0
#define OSCHP_MODE_DIRECT 1

#define RTC_CLOCK_SRC_DCO2 0
#define RTC_CLOCK_SRC_EXT_XTAL 5

#define PCLK_CLOCK_SRC_MCLK 0
#define PCLK_CLOCK_SRC_2XMCLK 1

#define OSCHP_MODE OSCHP_MODE_XTAL
#define RTC_CLOCK_SRC RTC_CLOCK_SRC_DCO2
#define PCLK_CLOCK_SRC PCLK_CLOCK_SRC_2XMCLK

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
  .can_mo_type = XMC_CAN_MO_TYPE_TRANSMSGOBJ
};

__STATIC_FORCEINLINE void delay(uint32_t cycles)
{
  while(--cycles > 0)
  {
    __NOP();
  }
}

// Use OSCHP 20MHz
void SystemCoreClockSetup(void)
{
  /* Clock setup done during SSW using the CLOCK_VAL1 and CLOCK_VAL2 defined in vector table */

  /* disable bit protection */
  SCU_GENERAL->PASSWD = 0x000000C0UL;

  if (OSCHP_GetFrequency() > 20000000U)
  {
    SCU_ANALOG->ANAOSCHPCTRL |= SCU_ANALOG_ANAOSCHPCTRL_HYSCTRL_Msk;
  }

  /* OSCHP source selection - OSC mode */
  SCU_ANALOG->ANAOSCHPCTRL = (SCU_ANALOG->ANAOSCHPCTRL & ~SCU_ANALOG_ANAOSCHPCTRL_MODE_Msk) |
                             (OSCHP_MODE << SCU_ANALOG_ANAOSCHPCTRL_MODE_Pos);

  do
  {
    /* Restart OSC_HP oscillator watchdog */
    SCU_INTERRUPT->SRCLR1 = SCU_INTERRUPT_SRCLR1_LOECI_Msk;

    /* Enable OSC_HP oscillator watchdog*/
    SCU_CLK->OSCCSR &= ~SCU_CLK_OSCCSR_XOWDEN_Msk;
    delay(20);
    SCU_CLK->OSCCSR |= SCU_CLK_OSCCSR_XOWDEN_Msk;

    /* Wait a few DCO2 cycles for the update of the clock detection result */
    delay(2500);

    /* check clock is ok */
  }
  while(SCU_INTERRUPT->SRRAW1 & SCU_INTERRUPT_SRRAW1_LOECI_Msk);

  /* DCLK source using OSC_HP */
  SCU_CLK->CLKCR1 |= SCU_CLK_CLKCR1_DCLKSEL_Msk;

  /* Update PCLK selection mux. */
  /* Fractional divider enabled, MCLK frequency equal DCO1 frequency or external crystal frequency */
  SCU_CLK->CLKCR = (1023UL <<SCU_CLK_CLKCR_CNTADJ_Pos) |
                    (RTC_CLOCK_SRC << SCU_CLK_CLKCR_RTCCLKSEL_Pos) |
                    (PCLK_CLOCK_SRC << SCU_CLK_CLKCR_PCLKSEL_Pos) |
                    0x100U; /* IDIV = 1 */

  /* enable bit protection */
  SCU_GENERAL->PASSWD = 0x000000C3UL;

  SystemCoreClockUpdate();
}

void SysTick_Handler(void)
{
  XMC_GPIO_ToggleOutput(LED1);

  ADC_StartConversion();
  while (ADC_ConversionDone() != 0);
	
  CAN_message.can_data_word[0] = ADC_GetValue();
  XMC_CAN_MO_UpdateData(&CAN_message);
 
  /* Send data in CAN_message */
  XMC_CAN_MO_Transmit(&CAN_message);
}


int main(void)
{
  ADC_Initialize();
	
  /*Configure CAN Module*/
  XMC_CAN_InitEx(CAN, XMC_CAN_CANCLKSRC_FOHP, CAN_FREQUENCY);

  /*Configure CAN Node baudrate*/
  XMC_CAN_NODE_NominalBitTimeConfigureEx(CAN_NODE1, &baud);
	
  XMC_CAN_NODE_EnableConfigurationChange(CAN_NODE1);
  XMC_CAN_NODE_SetInitBit(CAN_NODE1);

  /* Configure CAN NODE input pin */
  XMC_GPIO_SetMode(CAN_RXD, XMC_GPIO_MODE_INPUT_TRISTATE);
  XMC_CAN_NODE_SetReceiveInput(CAN_NODE1, CAN_NODE1_RXD_P4_8);

  /*Message Configuration*/
  XMC_CAN_MO_Config(&CAN_message);

  /*Allocate MO in Node List*/
  XMC_CAN_AllocateMOtoNodeList(CAN, 1, 0);
	
  XMC_CAN_NODE_DisableConfigurationChange(CAN_NODE1);
  XMC_CAN_NODE_ResetInitBit(CAN_NODE1);
	
  /* Configure CAN NODE output pin */
  XMC_GPIO_SetMode(CAN_TXD, (XMC_GPIO_MODE_t)((int32_t)XMC_GPIO_MODE_OUTPUT_PUSH_PULL | (int32_t)P4_9_AF_CAN_N1_TXD));

  /* Configure LED pin */
  XMC_GPIO_SetMode(LED1, XMC_GPIO_MODE_OUTPUT_PUSH_PULL);

  /* Configure SysTick */
  SysTick_Config(SystemCoreClock / TICKS_PER_SECOND);

  while(1);
}

