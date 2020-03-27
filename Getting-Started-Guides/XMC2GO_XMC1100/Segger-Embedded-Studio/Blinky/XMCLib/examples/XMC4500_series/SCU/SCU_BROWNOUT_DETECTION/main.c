#include "xmc_scu.h"

void NMI_Handler(void)
{
  __BKPT(0);
}

int main(void)
{

  XMC_SCU_TRAP_Enable(XMC_SCU_TRAP_BROWNOUT);
  XMC_SCU_POWER_EnableMonitor(130, 1);

  /* Placeholder for user application code. The while loop below can be replaced with user application code. */
  while(1U)
  {

  }
}
