/**
 * @file main.c
 * @date 2019-07-23
 *
 * @cond
  *********************************************************************************************************************
 * XMClib v2.1.24 - DMA_FCE XMC Peripheral Driver Library Example
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
 *
 * Change History
 * --------------
 *
 * 2019-07-23:
 *     - Initial version
 *
 * @endcond
 *
 */

#include "xmc_fce.h"
#include "xmc_gpio.h"
#include "xmc_dma.h"

#define DATA_SIZE 256
#define LED1 P3_9

/* Test data for which crc32 should be calculated */
const uint32_t data[DATA_SIZE] =
{
		0x54EC0525,  0x447135B2,  0x6EED86F9,  0x10B9EE76,  0x9C5C8F55,  0x44C8F0A0,  0x9F5C41D3,  0x4A6C8EF3,
		0x3CB43AC2,  0x9A9E6CA4,  0xA296D5A0,  0x2BE2EF95,  0x7501B963,  0x2906AD29,  0xE695DF1E,  0xA1E3C9E8,
		0x907339C8,  0xF205C7A7,  0xD6DE4D18,  0xB6A9D7D5,  0x79F98F63,  0x467F7A6E,  0x11B5B005,  0x69B97842,
		0xD1B9129C,  0xDDBA1E26,  0x42E421EF,  0xA8BEDDE7,  0x33995D90,  0xC639D14D,  0xAC58E5ED,  0x5D71FE17,
		0xEE1CDF08,  0x3D5E0D81,  0xACB04FA7,  0x7FD4CE83,  0x6BE85D52,  0x02EB1A5A,  0x24CC89DC,  0x37F18392,
		0x56C886E7,  0x9C8BCC4C,  0xBB3475DA,  0x0424F800,  0x404A14F4,  0x41D7B9A4,  0x8F97D2B4,  0x16D928C5,
		0x2C059085,  0xC1BACF2D,  0xE3A582FE,  0x48ED877C,  0xC2BE6BBB,  0x3F83C7EF,  0x752CE9CB,  0x0D1E01CA,
		0x02ECDF82,  0x3D45F86B,  0xB359203D,  0x611A60E6,  0x3FE3B879,  0x34E81B39,  0x5B761930,  0x869EC1A5,
		0xBF58005D,  0x8B9C20F5,  0x058D22A3,  0x11AB9E24,  0xCC534712,  0xA268FEB4,  0x4EA7DE22,  0x34DC0414,
		0xF430CB9D,  0x9069905B,  0x3A9487E0,  0x930C11BA,  0x5D9D6FF3,  0x9C3B5B26,  0xD099A501,  0xE55FC72E,
		0x76C54E09,  0x11243967,  0x3B952BD2,  0x0617F2FC,  0x2A14FA99,  0x42B1C525,  0xF9EEF4A4,  0xA090F1C3,
		0xFA2480BD,  0x548E7924,  0x2623CE99,  0x544299F4,  0xB902DA0E,  0x71725F30,  0x52016AFB,  0x95386417,
		0x9AD099AB,  0x12F6E52D,  0x618D04C7,  0xD4CCD8A3,  0x01AB1763,  0x8893836D,  0x3A2D270E,  0x999C0DDF,
		0x06ED62BE,  0x887F8DE5,  0x20AA3875,  0x22637F43,  0x85419B21,  0x2E54855D,  0xC6D0D493,  0x38E8F00C,
		0x2F463851,  0xA5930018,  0xC108CEA8,  0x9D20AE8A,  0x4EA42837,  0x3DB7AE94,  0xDA364F9B,  0x256F506A,
		0x78273ADE,  0x6AC3CE93,  0x0B79A658,  0x6EE19398,  0xA3C157A3,  0x0F90187B,  0xEB4B6797,  0xAF834C40,
		0xCBD6BCBB,  0xC103BC69,  0x5F2E65CC,  0x472AAD0B,  0x06911251,  0x87692D91,  0x999ECA09,  0xA8E1BF50,
		0x68642547,  0x0B8B4F7E,  0xB0731848,  0x4ED787A3,  0xA9AF212E,  0x8D105838,  0xD4A1C0A3,  0xDD03DE66,
		0x5675CCE7,  0x2B0A99A5,  0x4C2A3071,  0x0635D4F3,  0xD5EBA468,  0x77B2CCE7,  0xB9B2722F,  0x0457FCFA,
		0xC963D641,  0x2401AFCA,  0x5F29B15E,  0x616A97D1,  0x82415FA4,  0xE7C0E4A8,  0x2D7138E2,  0xA4DFF120,
		0x1301A423,  0xEAB3A9B0,  0x432DCEFC,  0xDABD708B,  0x832BD129,  0xD7FA5CA1,  0x607CF76C,  0x8D9EA21D,
		0x2DBE329B,  0x7D6FE0B1,  0xCFF21250,  0xEE449A83,  0x70B84C66,  0x99882725,  0x2487F50A,  0x11DD0B02,
		0x66C457B4,  0xA310227D,  0xF0EF426F,  0x557A1C16,  0x2B42E34D,  0xB2ADF3CB,  0x11430900,  0xA768BC11,
		0xFB364887,  0x150B6F3C,  0x3D60CEDD,  0x7C54E784,  0xB1AC29AC,  0xC90BA26B,  0xDCD7775C,  0xFD9E7FF8,
		0xD9CD97D1,  0x4858F921,  0x08FEDA90,  0x2F7FDE9E,  0x035323C9,  0x833E9235,  0x7E183785,  0x8DE27D17,
		0x35E6C361,  0xEAD03BA8,  0x3227D1B3,  0x13A0BEDF,  0xF77C1EDD,  0x61BDC1F3,  0x5270B33B,  0xCD86C8AE,
		0xF4ED9D50,  0x365A767D,  0x0B048CBA,  0x8571E3CF,  0xBE7C1D76,  0x677D748F,  0x90C664C4,  0x4A2B89C6,
		0x90748331,  0x7D6AE589,  0xFD8746D1,  0x504B41DA,  0x4A98B9D2,  0xD7073E19,  0xF8AE5049,  0xBDF25050,
		0x660B5035,  0x0FFA4172,  0x49CF273D,  0x3C75F234,  0x199FC2A7,  0x114A73A9,  0x446A88BE,  0xCD397931,
		0x4C9AC32B,  0x1FD7D8EB,  0x39672BA1,  0xE352ED93,  0xBACA029F,  0xD88B5BAE,  0xE8A1ECB5,  0xBF2DF783,
		0xDDC77DFC,  0x5EA152A1,  0xE08BC11C,  0x923ECDC6,  0x75A7E9EF,  0xABAB7297,  0x7EDBC951,  0x38CE6F2A,
		0x6E8392A8,  0x88576DB6,  0x4124D40E,  0xD58AD161,  0xD667DC29,  0xC3BB310B,  0xB46DED73,  0xFFFB622D,
};

/* CRC engine configuration */
const XMC_FCE_t crc_engine =
{
  .kernel_ptr = FCE_KE0,
  .fce_cfg_update.config_xsel = true,
  .fce_cfg_update.config_refin = true,
  .fce_cfg_update.config_refout = true,
  .seedvalue = 0xffffffffU
};

/* DMA channel configuration */
const XMC_DMA_CH_CONFIG_t dma_ch_config =
{
  {
    .enable_interrupt = true, /* Interrupts enabled */
    .dst_transfer_width = XMC_DMA_CH_TRANSFER_WIDTH_32, /* Destination transfer width */
    .src_transfer_width = XMC_DMA_CH_TRANSFER_WIDTH_32, /* Source transfer width */
    .dst_address_count_mode = XMC_DMA_CH_ADDRESS_COUNT_MODE_NO_CHANGE, /* Destination address count mode */
    .src_address_count_mode = XMC_DMA_CH_ADDRESS_COUNT_MODE_INCREMENT, /* Source address count mode */
    .dst_burst_length = XMC_DMA_CH_BURST_LENGTH_8, /* Destination burst length */
    .src_burst_length = XMC_DMA_CH_BURST_LENGTH_8, /* Source burst length */
    .enable_src_gather = false, /* Source gather enabled? */
    .enable_dst_scatter = false, /* Destination scatter enabled? */
    .transfer_flow = XMC_DMA_CH_TRANSFER_FLOW_M2M_DMA, /* Transfer flow */
  },
  .src_addr = (uint32_t)&data[0],
  .dst_addr = (uint32_t)&(FCE_KE0->IR),
  .block_size = DATA_SIZE, /* Block size */
  .transfer_type = XMC_DMA_CH_TRANSFER_TYPE_SINGLE_BLOCK, /* Transfer type */
  .priority = XMC_DMA_CH_PRIORITY_0, /* Priority level */
  .src_handshaking = XMC_DMA_CH_SRC_HANDSHAKING_SOFTWARE, /* Source handshaking */
  .dst_handshaking = XMC_DMA_CH_DST_HANDSHAKING_SOFTWARE  /* Destination handshaking */
};

volatile bool transfer_done = false;

void GPDMA0_0_IRQHandler(void)
{
  transfer_done = true;
  XMC_DMA_CH_ClearEventStatus(XMC_DMA0, 2, XMC_DMA_CH_EVENT_BLOCK_TRANSFER_COMPLETE);
}

int main(void)
{
  XMC_GPIO_SetOutputHigh(LED1);
  XMC_GPIO_SetMode(LED1, XMC_GPIO_MODE_OUTPUT_PUSH_PULL);

  XMC_DMA_Init(XMC_DMA0);
  XMC_DMA_CH_Init(XMC_DMA0, 2, &dma_ch_config);
  XMC_DMA_CH_EnableEvent(XMC_DMA0, 2, XMC_DMA_CH_EVENT_BLOCK_TRANSFER_COMPLETE);

  /* Enable DMA event handling */
  NVIC_SetPriority(GPDMA0_0_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(), 63, 0));
  NVIC_EnableIRQ(GPDMA0_0_IRQn);

  XMC_FCE_Init(&crc_engine);
  /* Set expected CRC-32 */
  XMC_FCE_UpdateCRCCheck(&crc_engine, 0x99f69cd9);
  /* Set length of message */
  XMC_FCE_UpdateLength(&crc_engine, 256);
  /* Enable auto checking of the calculated CRC */
  XMC_FCE_EnableOperation(&crc_engine, XMC_FCE_CFG_CONFIG_CCE);

  XMC_DMA_CH_Enable(XMC_DMA0, 2);

  while (transfer_done == false);

  if (XMC_FCE_GetEventStatus(&crc_engine, XMC_FCE_STS_MISMATCH_CRC) == false)
  {
	XMC_GPIO_ToggleOutput(LED1);
  }
  else
  {
	while(1)
	{
	  XMC_GPIO_ToggleOutput(LED1);
	  for (int32_t delay = 0; delay < 0x1fffff; ++delay)
	  {
		__NOP();
	  }
	}
  }

  while(1);
}
