#include <xmc_gpio.h>
#include <xmc_can.h>

#define TICKS_PER_SECOND 10

#define LED1 P5_9
#define LED2 P5_8
#define BUTTON1 P15_13
#define BUTTON2 P15_12

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
  .can_mo_type = XMC_CAN_MO_TYPE_TRANSMSGOBJ
};

void SysTick_Handler(void)
{
  XMC_GPIO_ToggleOutput(LED1);
	
  // Sample and send buttons state
  CAN_message.can_data_word[0] = XMC_GPIO_GetInput(BUTTON1) | (XMC_GPIO_GetInput(BUTTON2) << 1);
  XMC_CAN_MO_UpdateData(&CAN_message);
 
  /* Send data in CAN_message */
  XMC_CAN_MO_Transmit(&CAN_message);
}


int main(void)
{
  XMC_GPIO_CONFIG_t gpio_config =
  {
	.mode = XMC_GPIO_MODE_OUTPUT_PUSH_PULL
  };
	
  XMC_GPIO_Init(LED1, &gpio_config);
  XMC_GPIO_Init(LED2, &gpio_config);
	
  // Buttons connected via pull ups
  gpio_config.mode = XMC_GPIO_MODE_INPUT_INVERTED_TRISTATE;
  XMC_GPIO_Init(BUTTON1, &gpio_config);
  XMC_GPIO_Init(BUTTON2, &gpio_config);
	
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
	
  XMC_CAN_NODE_DisableConfigurationChange(CAN_NODE1);
  XMC_CAN_NODE_ResetInitBit(CAN_NODE1);
	
  /* Configure CAN NODE output pin */
  XMC_GPIO_SetMode(CAN_TXD, (XMC_GPIO_MODE_t)((int32_t)XMC_GPIO_MODE_OUTPUT_PUSH_PULL | (int32_t)P1_12_AF_CAN_N1_TXD));

  /* Configure SysTick */
  SysTick_Config(SystemCoreClock / TICKS_PER_SECOND);

  while(1);
}

