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
 * @brief XMC1400 Bootkit I2C EEPROM example
 *
 * History
 * =======
 *
 * Version 1.0.0 
 * - Initial
 *
 */

#ifndef EEPROM_H
#define EEPROM_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

void eeprom_init(void);

void eeprom_write(uint16_t address, uint8_t *data, uint32_t size);

void eeprom_read(uint16_t address, uint8_t *data, uint32_t size);

#ifdef __cplusplus
}
#endif

#endif
