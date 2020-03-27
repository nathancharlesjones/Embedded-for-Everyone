#include <xmc_common.h>
#include "e_eeprom_xmc4.h"

#define pkcs11OBJECT_CERTIFICATE_MAX_SIZE     2048
#define pkcs11OBJECT_FLASH_CERT_PRESENT       ( 0xABCDEFuL )

typedef struct
{
  uint8_t cDeviceCertificate[ pkcs11OBJECT_CERTIFICATE_MAX_SIZE ];
  uint8_t cDeviceKey[ pkcs11OBJECT_CERTIFICATE_MAX_SIZE ];
  uint32_t ulDeviceCertificateMark;
  uint32_t ulDeviceKeyMark;
} P11KeyConfig_t;

E_EEPROM_XMC4_t e_eeprom;
P11KeyConfig_t P11KeyConfig;

int main(void)
{
  E_EEPROM_XMC4_Init(&e_eeprom, sizeof(P11KeyConfig_t));

  if (E_EEPROM_XMC4_IsFlashEmpty() == false)
  {
    E_EEPROM_XMC4_ReadArray(0, (uint8_t *const)&P11KeyConfig, sizeof(P11KeyConfig_t));
  }

  P11KeyConfig.ulDeviceCertificateMark = pkcs11OBJECT_FLASH_CERT_PRESENT;
  E_EEPROM_XMC4_WriteArray(0, (uint8_t *const)&P11KeyConfig, sizeof(P11KeyConfig_t));
  E_EEPROM_XMC4_UpdateFlashContents();

  while(1U);
}
