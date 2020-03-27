/*
 * Copyright (C) 2014-2017 Infineon Technologies AG. All rights reserved.
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
 * @date 07 Aug, 2017
 * @version 1.0.0
 *
 * @brief XMC1400 Boot MATH coprocessor SQRT example
 *
 * The example demonstrates the usage of the CORDIC coprocessor to calculate the square root of a number
 *
 * History <br>
 *
 * Version 1.0.0 Initial <br>
 *
 */


#include <xmc_common.h>
#include "xmc_math.h"
#include <math.h>

__STATIC_INLINE void InitSysTickCounter(void)
{
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
  SysTick->LOAD  = SysTick_LOAD_RELOAD_Msk;
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk;
}

__STATIC_INLINE void ResetSysTickCounter(void)
{
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
}

__STATIC_INLINE void StartSysTickCounter(void)
{
  SysTick->CTRL  |= SysTick_CTRL_ENABLE_Msk;
}

__STATIC_INLINE void StopSysTickCounter(void)
{
  SysTick->CTRL  &= (uint32_t)~SysTick_CTRL_ENABLE_Msk;
}

__STATIC_INLINE uint32_t GetSysTickCounter(void)
{
  return (SysTick->VAL);
}

__STATIC_INLINE float q15_to_float(int16_t a) { return (float)a / 0x8000; }
__STATIC_INLINE float q31_to_float(int32_t a) { return (float)a / 0x80000000; }
__STATIC_INLINE int32_t float_to_q15(float a) { return (int16_t)((a * 0x8000) + 0.5F); }
__STATIC_INLINE int32_t float_to_q31(float a) { return (int32_t)((a * 0x80000000) + 0.5F); }

uint32_t tdelta_cordic, tdelta_software;
float error;

int main(void)
{
  int32_t a;
  uint32_t t1, t2;
  float b, c;

  InitSysTickCounter();
  StartSysTickCounter();
  t1 = GetSysTickCounter();
  a = XMC_MATH_CORDIC_Q31_Sqrt(float_to_q31(0.1F));
  t2 = GetSysTickCounter();
  b = q31_to_float(a);
  tdelta_cordic = t1 - t2;

  StopSysTickCounter();
  ResetSysTickCounter();
  StartSysTickCounter();

  t1 = GetSysTickCounter();
  c = sqrtf(0.1F);
  t2 = GetSysTickCounter();
  tdelta_software = t1 - t2;
  
  error = b - c;

  /* avoid compiler warning */
  (void)error;

  /* Placeholder for user application code. The while loop below can be replaced with user application code. */
  while(1)
  {
  }
}
