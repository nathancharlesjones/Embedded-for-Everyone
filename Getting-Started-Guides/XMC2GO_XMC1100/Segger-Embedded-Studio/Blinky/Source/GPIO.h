#ifndef __GPIO_H__
#define __GPIO_H__

/* Generated for XMC1100_TSSOP38 on: Wed Feb 13 23:11:00 2013*/

#include "XMC1100.h"

#define INPUT           0x00U
#define INPUT_PD        0x08U
#define INPUT_PU        0x10U
#define INPUT_PPS       0x18U
#define INPUT_INV       0x20U
#define INPUT_INV_PD    0x28U
#define INPUT_INV_PU    0x30U
#define INPUT_INV_PPS   0x38U
#define OUTPUT_PP_GP    0x80U
#define OUTPUT_PP_AF1   0x88U
#define OUTPUT_PP_AF2   0x90U
#define OUTPUT_PP_AF3   0x98U
#define OUTPUT_PP_AF4   0xA0U
#define OUTPUT_PP_AF5   0xA8U
#define OUTPUT_PP_AF6   0xB0U
#define OUTPUT_PP_AF7   0xB8U
#define OUTPUT_OD_GP    0xC0U
#define OUTPUT_OD_AF1   0xC8U
#define OUTPUT_OD_AF2   0xD0U
#define OUTPUT_OD_AF3   0xD8U
#define OUTPUT_OD_AF4   0XE0U
#define OUTPUT_OD_AF5   0xE8U
#define OUTPUT_OD_AF6   0xF0U
#define OUTPUT_OD_AF7   0XF8U

#define SOFTWARE        0x0UL
#define HW0             0x1UL
#define HW1             0x2UL

__STATIC_INLINE void P0_0_set_mode(uint8_t mode){
    PORT0->IOCR0 &= ~0x000000f8UL;
    PORT0->IOCR0 |= mode << 0;
}

__STATIC_INLINE void P0_0_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x00000003UL;
    PORT0->HWSEL |= config << 0;
}

__STATIC_INLINE void P0_0_set_standard_hysteresis(){
    PORT0->PHCR0 &= ~0x00000004UL;
}

__STATIC_INLINE void P0_0_set_large_hysteresis(){
    PORT0->PHCR0 |= 0x00000004UL;
}

__STATIC_INLINE void P0_0_set(void){
    PORT0->OMR = 0x00000001UL;
}

__STATIC_INLINE void P0_0_reset(void){
    PORT0->OMR = 0x00010000UL;
}

__STATIC_INLINE void P0_0_toggle(void){
    PORT0->OMR = 0x00010001UL;
}

__STATIC_INLINE uint32_t P0_0_read(void){
    return(PORT0->IN & 0x00000001UL);
}

__STATIC_INLINE void P0_0_enable_pps(void){
    PORT0->PPS |= 0x00000001UL;
}

__STATIC_INLINE void P0_0_disable_pps(void){
    PORT0->PPS &= ~0x00000001UL;
}

__STATIC_INLINE void P0_1_set_mode(uint8_t mode){
    PORT0->IOCR0 &= ~0x0000f800UL;
    PORT0->IOCR0 |= mode << 8;
}

__STATIC_INLINE void P0_1_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x0000000cUL;
    PORT0->HWSEL |= config << 2;
}

__STATIC_INLINE void P0_1_set_standard_hysteresis(){
    PORT0->PHCR0 &= ~0x00000040UL;
}

__STATIC_INLINE void P0_1_set_large_hysteresis(){
    PORT0->PHCR0 |= 0x00000040UL;
}

__STATIC_INLINE void P0_1_set(void){
    PORT0->OMR = 0x00000002UL;
}

__STATIC_INLINE void P0_1_reset(void){
    PORT0->OMR = 0x00020000UL;
}

__STATIC_INLINE void P0_1_toggle(void){
    PORT0->OMR = 0x00020002UL;
}

__STATIC_INLINE uint32_t P0_1_read(void){
    return(PORT0->IN & 0x00000002UL);
}

__STATIC_INLINE void P0_1_enable_pps(void){
    PORT0->PPS |= 0x00000002UL;
}

__STATIC_INLINE void P0_1_disable_pps(void){
    PORT0->PPS &= ~0x00000002UL;
}

__STATIC_INLINE void P0_2_set_mode(uint8_t mode){
    PORT0->IOCR0 &= ~0x00f80000UL;
    PORT0->IOCR0 |= mode << 16;
}

__STATIC_INLINE void P0_2_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x00000030UL;
    PORT0->HWSEL |= config << 4;
}

__STATIC_INLINE void P0_2_set_standard_hysteresis(){
    PORT0->PHCR0 &= ~0x00000400UL;
}

__STATIC_INLINE void P0_2_set_large_hysteresis(){
    PORT0->PHCR0 |= 0x00000400UL;
}

__STATIC_INLINE void P0_2_set(void){
    PORT0->OMR = 0x00000004UL;
}

__STATIC_INLINE void P0_2_reset(void){
    PORT0->OMR = 0x00040000UL;
}

__STATIC_INLINE void P0_2_toggle(void){
    PORT0->OMR = 0x00040004UL;
}

__STATIC_INLINE uint32_t P0_2_read(void){
    return(PORT0->IN & 0x00000004UL);
}

__STATIC_INLINE void P0_2_enable_pps(void){
    PORT0->PPS |= 0x00000004UL;
}

__STATIC_INLINE void P0_2_disable_pps(void){
    PORT0->PPS &= ~0x00000004UL;
}

__STATIC_INLINE void P0_3_set_mode(uint8_t mode){
    PORT0->IOCR0 &= ~0xf8000000UL;
    PORT0->IOCR0 |= mode << 24;
}

__STATIC_INLINE void P0_3_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x000000c0UL;
    PORT0->HWSEL |= config << 6;
}

__STATIC_INLINE void P0_3_set_standard_hysteresis(){
    PORT0->PHCR0 &= ~0x00004000UL;
}

__STATIC_INLINE void P0_3_set_large_hysteresis(){
    PORT0->PHCR0 |= 0x00004000UL;
}

__STATIC_INLINE void P0_3_set(void){
    PORT0->OMR = 0x00000008UL;
}

__STATIC_INLINE void P0_3_reset(void){
    PORT0->OMR = 0x00080000UL;
}

__STATIC_INLINE void P0_3_toggle(void){
    PORT0->OMR = 0x00080008UL;
}

__STATIC_INLINE uint32_t P0_3_read(void){
    return(PORT0->IN & 0x00000008UL);
}

__STATIC_INLINE void P0_3_enable_pps(void){
    PORT0->PPS |= 0x00000008UL;
}

__STATIC_INLINE void P0_3_disable_pps(void){
    PORT0->PPS &= ~0x00000008UL;
}

__STATIC_INLINE void P0_4_set_mode(uint8_t mode){
    PORT0->IOCR4 &= ~0x000000f8UL;
    PORT0->IOCR4 |= mode << 0;
}

__STATIC_INLINE void P0_4_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x00000300UL;
    PORT0->HWSEL |= config << 8;
}

__STATIC_INLINE void P0_4_set_standard_hysteresis(){
    PORT0->PHCR0 &= ~0x00040000UL;
}

__STATIC_INLINE void P0_4_set_large_hysteresis(){
    PORT0->PHCR0 |= 0x00040000UL;
}

__STATIC_INLINE void P0_4_set(void){
    PORT0->OMR = 0x00000010UL;
}

__STATIC_INLINE void P0_4_reset(void){
    PORT0->OMR = 0x00100000UL;
}

__STATIC_INLINE void P0_4_toggle(void){
    PORT0->OMR = 0x00100010UL;
}

__STATIC_INLINE uint32_t P0_4_read(void){
    return(PORT0->IN & 0x00000010UL);
}

__STATIC_INLINE void P0_4_enable_pps(void){
    PORT0->PPS |= 0x00000010UL;
}

__STATIC_INLINE void P0_4_disable_pps(void){
    PORT0->PPS &= ~0x00000010UL;
}

__STATIC_INLINE void P0_5_set_mode(uint8_t mode){
    PORT0->IOCR4 &= ~0x0000f800UL;
    PORT0->IOCR4 |= mode << 8;
}

__STATIC_INLINE void P0_5_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x00000c00UL;
    PORT0->HWSEL |= config << 10;
}

__STATIC_INLINE void P0_5_set_standard_hysteresis(){
    PORT0->PHCR0 &= ~0x00400000UL;
}

__STATIC_INLINE void P0_5_set_large_hysteresis(){
    PORT0->PHCR0 |= 0x00400000UL;
}

__STATIC_INLINE void P0_5_set(void){
    PORT0->OMR = 0x00000020UL;
}

__STATIC_INLINE void P0_5_reset(void){
    PORT0->OMR = 0x00200000UL;
}

__STATIC_INLINE void P0_5_toggle(void){
    PORT0->OMR = 0x00200020UL;
}

__STATIC_INLINE uint32_t P0_5_read(void){
    return(PORT0->IN & 0x00000020UL);
}

__STATIC_INLINE void P0_5_enable_pps(void){
    PORT0->PPS |= 0x00000020UL;
}

__STATIC_INLINE void P0_5_disable_pps(void){
    PORT0->PPS &= ~0x00000020UL;
}

__STATIC_INLINE void P0_6_set_mode(uint8_t mode){
    PORT0->IOCR4 &= ~0x00f80000UL;
    PORT0->IOCR4 |= mode << 16;
}

__STATIC_INLINE void P0_6_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x00003000UL;
    PORT0->HWSEL |= config << 12;
}

__STATIC_INLINE void P0_6_set_standard_hysteresis(){
    PORT0->PHCR0 &= ~0x04000000UL;
}

__STATIC_INLINE void P0_6_set_large_hysteresis(){
    PORT0->PHCR0 |= 0x04000000UL;
}

__STATIC_INLINE void P0_6_set(void){
    PORT0->OMR = 0x00000040UL;
}

__STATIC_INLINE void P0_6_reset(void){
    PORT0->OMR = 0x00400000UL;
}

__STATIC_INLINE void P0_6_toggle(void){
    PORT0->OMR = 0x00400040UL;
}

__STATIC_INLINE uint32_t P0_6_read(void){
    return(PORT0->IN & 0x00000040UL);
}

__STATIC_INLINE void P0_6_enable_pps(void){
    PORT0->PPS |= 0x00000040UL;
}

__STATIC_INLINE void P0_6_disable_pps(void){
    PORT0->PPS &= ~0x00000040UL;
}

__STATIC_INLINE void P0_7_set_mode(uint8_t mode){
    PORT0->IOCR4 &= ~0xf8000000UL;
    PORT0->IOCR4 |= mode << 24;
}

__STATIC_INLINE void P0_7_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x0000c000UL;
    PORT0->HWSEL |= config << 14;
}

__STATIC_INLINE void P0_7_set_standard_hysteresis(){
    PORT0->PHCR0 &= ~0x40000000UL;
}

__STATIC_INLINE void P0_7_set_large_hysteresis(){
    PORT0->PHCR0 |= 0x40000000UL;
}

__STATIC_INLINE void P0_7_set(void){
    PORT0->OMR = 0x00000080UL;
}

__STATIC_INLINE void P0_7_reset(void){
    PORT0->OMR = 0x00800000UL;
}

__STATIC_INLINE void P0_7_toggle(void){
    PORT0->OMR = 0x00800080UL;
}

__STATIC_INLINE uint32_t P0_7_read(void){
    return(PORT0->IN & 0x00000080UL);
}

__STATIC_INLINE void P0_7_enable_pps(void){
    PORT0->PPS |= 0x00000080UL;
}

__STATIC_INLINE void P0_7_disable_pps(void){
    PORT0->PPS &= ~0x00000080UL;
}

__STATIC_INLINE void P0_8_set_mode(uint8_t mode){
    PORT0->IOCR8 &= ~0x000000f8UL;
    PORT0->IOCR8 |= mode << 0;
}

__STATIC_INLINE void P0_8_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x00030000UL;
    PORT0->HWSEL |= config << 16;
}

__STATIC_INLINE void P0_8_set_standard_hysteresis(){
    PORT0->PHCR1 &= ~0x00000004UL;
}

__STATIC_INLINE void P0_8_set_large_hysteresis(){
    PORT0->PHCR1 |= 0x00000004UL;
}

__STATIC_INLINE void P0_8_set(void){
    PORT0->OMR = 0x00000100UL;
}

__STATIC_INLINE void P0_8_reset(void){
    PORT0->OMR = 0x01000000UL;
}

__STATIC_INLINE void P0_8_toggle(void){
    PORT0->OMR = 0x01000100UL;
}

__STATIC_INLINE uint32_t P0_8_read(void){
    return(PORT0->IN & 0x00000100UL);
}

__STATIC_INLINE void P0_8_enable_pps(void){
    PORT0->PPS |= 0x00000100UL;
}

__STATIC_INLINE void P0_8_disable_pps(void){
    PORT0->PPS &= ~0x00000100UL;
}

__STATIC_INLINE void P0_9_set_mode(uint8_t mode){
    PORT0->IOCR8 &= ~0x0000f800UL;
    PORT0->IOCR8 |= mode << 8;
}

__STATIC_INLINE void P0_9_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x000c0000UL;
    PORT0->HWSEL |= config << 18;
}

__STATIC_INLINE void P0_9_set_standard_hysteresis(){
    PORT0->PHCR1 &= ~0x00000040UL;
}

__STATIC_INLINE void P0_9_set_large_hysteresis(){
    PORT0->PHCR1 |= 0x00000040UL;
}

__STATIC_INLINE void P0_9_set(void){
    PORT0->OMR = 0x00000200UL;
}

__STATIC_INLINE void P0_9_reset(void){
    PORT0->OMR = 0x02000000UL;
}

__STATIC_INLINE void P0_9_toggle(void){
    PORT0->OMR = 0x02000200UL;
}

__STATIC_INLINE uint32_t P0_9_read(void){
    return(PORT0->IN & 0x00000200UL);
}

__STATIC_INLINE void P0_9_enable_pps(void){
    PORT0->PPS |= 0x00000200UL;
}

__STATIC_INLINE void P0_9_disable_pps(void){
    PORT0->PPS &= ~0x00000200UL;
}

__STATIC_INLINE void P0_10_set_mode(uint8_t mode){
    PORT0->IOCR8 &= ~0x00f80000UL;
    PORT0->IOCR8 |= mode << 16;
}

__STATIC_INLINE void P0_10_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x00300000UL;
    PORT0->HWSEL |= config << 20;
}

__STATIC_INLINE void P0_10_set_standard_hysteresis(){
    PORT0->PHCR1 &= ~0x00000400UL;
}

__STATIC_INLINE void P0_10_set_large_hysteresis(){
    PORT0->PHCR1 |= 0x00000400UL;
}

__STATIC_INLINE void P0_10_set(void){
    PORT0->OMR = 0x00000400UL;
}

__STATIC_INLINE void P0_10_reset(void){
    PORT0->OMR = 0x04000000UL;
}

__STATIC_INLINE void P0_10_toggle(void){
    PORT0->OMR = 0x04000400UL;
}

__STATIC_INLINE uint32_t P0_10_read(void){
    return(PORT0->IN & 0x00000400UL);
}

__STATIC_INLINE void P0_10_enable_pps(void){
    PORT0->PPS |= 0x00000400UL;
}

__STATIC_INLINE void P0_10_disable_pps(void){
    PORT0->PPS &= ~0x00000400UL;
}

__STATIC_INLINE void P0_11_set_mode(uint8_t mode){
    PORT0->IOCR8 &= ~0xf8000000UL;
    PORT0->IOCR8 |= mode << 24;
}

__STATIC_INLINE void P0_11_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x00c00000UL;
    PORT0->HWSEL |= config << 22;
}

__STATIC_INLINE void P0_11_set_standard_hysteresis(){
    PORT0->PHCR1 &= ~0x00004000UL;
}

__STATIC_INLINE void P0_11_set_large_hysteresis(){
    PORT0->PHCR1 |= 0x00004000UL;
}

__STATIC_INLINE void P0_11_set(void){
    PORT0->OMR = 0x00000800UL;
}

__STATIC_INLINE void P0_11_reset(void){
    PORT0->OMR = 0x08000000UL;
}

__STATIC_INLINE void P0_11_toggle(void){
    PORT0->OMR = 0x08000800UL;
}

__STATIC_INLINE uint32_t P0_11_read(void){
    return(PORT0->IN & 0x00000800UL);
}

__STATIC_INLINE void P0_11_enable_pps(void){
    PORT0->PPS |= 0x00000800UL;
}

__STATIC_INLINE void P0_11_disable_pps(void){
    PORT0->PPS &= ~0x00000800UL;
}

__STATIC_INLINE void P0_12_set_mode(uint8_t mode){
    PORT0->IOCR12 &= ~0x000000f8UL;
    PORT0->IOCR12 |= mode << 0;
}

__STATIC_INLINE void P0_12_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x03000000UL;
    PORT0->HWSEL |= config << 24;
}

__STATIC_INLINE void P0_12_set_standard_hysteresis(){
    PORT0->PHCR1 &= ~0x00040000UL;
}

__STATIC_INLINE void P0_12_set_large_hysteresis(){
    PORT0->PHCR1 |= 0x00040000UL;
}

__STATIC_INLINE void P0_12_set(void){
    PORT0->OMR = 0x00001000UL;
}

__STATIC_INLINE void P0_12_reset(void){
    PORT0->OMR = 0x10000000UL;
}

__STATIC_INLINE void P0_12_toggle(void){
    PORT0->OMR = 0x10001000UL;
}

__STATIC_INLINE uint32_t P0_12_read(void){
    return(PORT0->IN & 0x00001000UL);
}

__STATIC_INLINE void P0_12_enable_pps(void){
    PORT0->PPS |= 0x00001000UL;
}

__STATIC_INLINE void P0_12_disable_pps(void){
    PORT0->PPS &= ~0x00001000UL;
}

__STATIC_INLINE void P0_13_set_mode(uint8_t mode){
    PORT0->IOCR12 &= ~0x0000f800UL;
    PORT0->IOCR12 |= mode << 8;
}

__STATIC_INLINE void P0_13_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x0c000000UL;
    PORT0->HWSEL |= config << 26;
}

__STATIC_INLINE void P0_13_set_standard_hysteresis(){
    PORT0->PHCR1 &= ~0x00400000UL;
}

__STATIC_INLINE void P0_13_set_large_hysteresis(){
    PORT0->PHCR1 |= 0x00400000UL;
}

__STATIC_INLINE void P0_13_set(void){
    PORT0->OMR = 0x00002000UL;
}

__STATIC_INLINE void P0_13_reset(void){
    PORT0->OMR = 0x20000000UL;
}

__STATIC_INLINE void P0_13_toggle(void){
    PORT0->OMR = 0x20002000UL;
}

__STATIC_INLINE uint32_t P0_13_read(void){
    return(PORT0->IN & 0x00002000UL);
}

__STATIC_INLINE void P0_13_enable_pps(void){
    PORT0->PPS |= 0x00002000UL;
}

__STATIC_INLINE void P0_13_disable_pps(void){
    PORT0->PPS &= ~0x00002000UL;
}

__STATIC_INLINE void P0_14_set_mode(uint8_t mode){
    PORT0->IOCR12 &= ~0x00f80000UL;
    PORT0->IOCR12 |= mode << 16;
}

__STATIC_INLINE void P0_14_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0x30000000UL;
    PORT0->HWSEL |= config << 28;
}

__STATIC_INLINE void P0_14_set_standard_hysteresis(){
    PORT0->PHCR1 &= ~0x04000000UL;
}

__STATIC_INLINE void P0_14_set_large_hysteresis(){
    PORT0->PHCR1 |= 0x04000000UL;
}

__STATIC_INLINE void P0_14_set(void){
    PORT0->OMR = 0x00004000UL;
}

__STATIC_INLINE void P0_14_reset(void){
    PORT0->OMR = 0x40000000UL;
}

__STATIC_INLINE void P0_14_toggle(void){
    PORT0->OMR = 0x40004000UL;
}

__STATIC_INLINE uint32_t P0_14_read(void){
    return(PORT0->IN & 0x00004000UL);
}

__STATIC_INLINE void P0_14_enable_pps(void){
    PORT0->PPS |= 0x00004000UL;
}

__STATIC_INLINE void P0_14_disable_pps(void){
    PORT0->PPS &= ~0x00004000UL;
}

__STATIC_INLINE void P0_15_set_mode(uint8_t mode){
    PORT0->IOCR12 &= ~0xf8000000UL;
    PORT0->IOCR12 |= mode << 24;
}

__STATIC_INLINE void P0_15_set_hwsel(uint32_t config){
    PORT0->HWSEL &= ~0xc0000000UL;
    PORT0->HWSEL |= config << 30;
}

__STATIC_INLINE void P0_15_set_standard_hysteresis(){
    PORT0->PHCR1 &= ~0x40000000UL;
}

__STATIC_INLINE void P0_15_set_large_hysteresis(){
    PORT0->PHCR1 |= 0x40000000UL;
}

__STATIC_INLINE void P0_15_set(void){
    PORT0->OMR = 0x00008000UL;
}

__STATIC_INLINE void P0_15_reset(void){
    PORT0->OMR = 0x80000000UL;
}

__STATIC_INLINE void P0_15_toggle(void){
    PORT0->OMR = 0x80008000UL;
}

__STATIC_INLINE uint32_t P0_15_read(void){
    return(PORT0->IN & 0x00008000UL);
}

__STATIC_INLINE void P0_15_enable_pps(void){
    PORT0->PPS |= 0x00008000UL;
}

__STATIC_INLINE void P0_15_disable_pps(void){
    PORT0->PPS &= ~0x00008000UL;
}

__STATIC_INLINE void P1_0_set_mode(uint8_t mode){
    PORT1->IOCR0 &= ~0x000000f8UL;
    PORT1->IOCR0 |= mode << 0;
}

__STATIC_INLINE void P1_0_set_hwsel(uint32_t config){
    PORT1->HWSEL &= ~0x00000003UL;
    PORT1->HWSEL |= config << 0;
}

__STATIC_INLINE void P1_0_set_standard_hysteresis(){
    PORT1->PHCR0 &= ~0x00000004UL;
}

__STATIC_INLINE void P1_0_set_large_hysteresis(){
    PORT1->PHCR0 |= 0x00000004UL;
}

__STATIC_INLINE void P1_0_set(void){
    PORT1->OMR = 0x00000001UL;
}

__STATIC_INLINE void P1_0_reset(void){
    PORT1->OMR = 0x00010000UL;
}

__STATIC_INLINE void P1_0_toggle(void){
    PORT1->OMR = 0x00010001UL;
}

__STATIC_INLINE uint32_t P1_0_read(void){
    return(PORT1->IN & 0x00000001UL);
}

__STATIC_INLINE void P1_0_enable_pps(void){
    PORT1->PPS |= 0x00000001UL;
}

__STATIC_INLINE void P1_0_disable_pps(void){
    PORT1->PPS &= ~0x00000001UL;
}

__STATIC_INLINE void P1_1_set_mode(uint8_t mode){
    PORT1->IOCR0 &= ~0x0000f800UL;
    PORT1->IOCR0 |= mode << 8;
}

__STATIC_INLINE void P1_1_set_hwsel(uint32_t config){
    PORT1->HWSEL &= ~0x0000000cUL;
    PORT1->HWSEL |= config << 2;
}

__STATIC_INLINE void P1_1_set_standard_hysteresis(){
    PORT1->PHCR0 &= ~0x00000040UL;
}

__STATIC_INLINE void P1_1_set_large_hysteresis(){
    PORT1->PHCR0 |= 0x00000040UL;
}

__STATIC_INLINE void P1_1_set(void){
    PORT1->OMR = 0x00000002UL;
}

__STATIC_INLINE void P1_1_reset(void){
    PORT1->OMR = 0x00020000UL;
}

__STATIC_INLINE void P1_1_toggle(void){
    PORT1->OMR = 0x00020002UL;
}

__STATIC_INLINE uint32_t P1_1_read(void){
    return(PORT1->IN & 0x00000002UL);
}

__STATIC_INLINE void P1_1_enable_pps(void){
    PORT1->PPS |= 0x00000002UL;
}

__STATIC_INLINE void P1_1_disable_pps(void){
    PORT1->PPS &= ~0x00000002UL;
}

__STATIC_INLINE void P1_2_set_mode(uint8_t mode){
    PORT1->IOCR0 &= ~0x00f80000UL;
    PORT1->IOCR0 |= mode << 16;
}

__STATIC_INLINE void P1_2_set_hwsel(uint32_t config){
    PORT1->HWSEL &= ~0x00000030UL;
    PORT1->HWSEL |= config << 4;
}

__STATIC_INLINE void P1_2_set_standard_hysteresis(){
    PORT1->PHCR0 &= ~0x00000400UL;
}

__STATIC_INLINE void P1_2_set_large_hysteresis(){
    PORT1->PHCR0 |= 0x00000400UL;
}

__STATIC_INLINE void P1_2_set(void){
    PORT1->OMR = 0x00000004UL;
}

__STATIC_INLINE void P1_2_reset(void){
    PORT1->OMR = 0x00040000UL;
}

__STATIC_INLINE void P1_2_toggle(void){
    PORT1->OMR = 0x00040004UL;
}

__STATIC_INLINE uint32_t P1_2_read(void){
    return(PORT1->IN & 0x00000004UL);
}

__STATIC_INLINE void P1_2_enable_pps(void){
    PORT1->PPS |= 0x00000004UL;
}

__STATIC_INLINE void P1_2_disable_pps(void){
    PORT1->PPS &= ~0x00000004UL;
}

__STATIC_INLINE void P1_3_set_mode(uint8_t mode){
    PORT1->IOCR0 &= ~0xf8000000UL;
    PORT1->IOCR0 |= mode << 24;
}

__STATIC_INLINE void P1_3_set_hwsel(uint32_t config){
    PORT1->HWSEL &= ~0x000000c0UL;
    PORT1->HWSEL |= config << 6;
}

__STATIC_INLINE void P1_3_set_standard_hysteresis(){
    PORT1->PHCR0 &= ~0x00004000UL;
}

__STATIC_INLINE void P1_3_set_large_hysteresis(){
    PORT1->PHCR0 |= 0x00004000UL;
}

__STATIC_INLINE void P1_3_set(void){
    PORT1->OMR = 0x00000008UL;
}

__STATIC_INLINE void P1_3_reset(void){
    PORT1->OMR = 0x00080000UL;
}

__STATIC_INLINE void P1_3_toggle(void){
    PORT1->OMR = 0x00080008UL;
}

__STATIC_INLINE uint32_t P1_3_read(void){
    return(PORT1->IN & 0x00000008UL);
}

__STATIC_INLINE void P1_3_enable_pps(void){
    PORT1->PPS |= 0x00000008UL;
}

__STATIC_INLINE void P1_3_disable_pps(void){
    PORT1->PPS &= ~0x00000008UL;
}

__STATIC_INLINE void P1_4_set_mode(uint8_t mode){
    PORT1->IOCR4 &= ~0x000000f8UL;
    PORT1->IOCR4 |= mode << 0;
}

__STATIC_INLINE void P1_4_set_hwsel(uint32_t config){
    PORT1->HWSEL &= ~0x00000300UL;
    PORT1->HWSEL |= config << 8;
}

__STATIC_INLINE void P1_4_set_standard_hysteresis(){
    PORT1->PHCR0 &= ~0x00040000UL;
}

__STATIC_INLINE void P1_4_set_large_hysteresis(){
    PORT1->PHCR0 |= 0x00040000UL;
}

__STATIC_INLINE void P1_4_set(void){
    PORT1->OMR = 0x00000010UL;
}

__STATIC_INLINE void P1_4_reset(void){
    PORT1->OMR = 0x00100000UL;
}

__STATIC_INLINE void P1_4_toggle(void){
    PORT1->OMR = 0x00100010UL;
}

__STATIC_INLINE uint32_t P1_4_read(void){
    return(PORT1->IN & 0x00000010UL);
}

__STATIC_INLINE void P1_4_enable_pps(void){
    PORT1->PPS |= 0x00000010UL;
}

__STATIC_INLINE void P1_4_disable_pps(void){
    PORT1->PPS &= ~0x00000010UL;
}

__STATIC_INLINE void P1_5_set_mode(uint8_t mode){
    PORT1->IOCR4 &= ~0x0000f800UL;
    PORT1->IOCR4 |= mode << 8;
}

__STATIC_INLINE void P1_5_set_hwsel(uint32_t config){
    PORT1->HWSEL &= ~0x00000c00UL;
    PORT1->HWSEL |= config << 10;
}

__STATIC_INLINE void P1_5_set_standard_hysteresis(){
    PORT1->PHCR0 &= ~0x00400000UL;
}

__STATIC_INLINE void P1_5_set_large_hysteresis(){
    PORT1->PHCR0 |= 0x00400000UL;
}

__STATIC_INLINE void P1_5_set(void){
    PORT1->OMR = 0x00000020UL;
}

__STATIC_INLINE void P1_5_reset(void){
    PORT1->OMR = 0x00200000UL;
}

__STATIC_INLINE void P1_5_toggle(void){
    PORT1->OMR = 0x00200020UL;
}

__STATIC_INLINE uint32_t P1_5_read(void){
    return(PORT1->IN & 0x00000020UL);
}

__STATIC_INLINE void P1_5_enable_pps(void){
    PORT1->PPS |= 0x00000020UL;
}

__STATIC_INLINE void P1_5_disable_pps(void){
    PORT1->PPS &= ~0x00000020UL;
}

__STATIC_INLINE void P2_0_set_mode(uint8_t mode){
    PORT2->IOCR0 &= ~0x000000f8UL;
    PORT2->IOCR0 |= mode << 0;
}

__STATIC_INLINE void P2_0_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x00000003UL;
    PORT2->HWSEL |= config << 0;
}

__STATIC_INLINE void P2_0_set_standard_hysteresis(){
    PORT2->PHCR0 &= ~0x00000004UL;
}

__STATIC_INLINE void P2_0_set_large_hysteresis(){
    PORT2->PHCR0 |= 0x00000004UL;
}

__STATIC_INLINE void P2_0_enable_digital(void){
    PORT2->PDISC &= ~0x00000001UL;
}

__STATIC_INLINE void P2_0_disable_digital(void){
    PORT2->PDISC |= 0x00000001UL;
}

__STATIC_INLINE void P2_0_set(void){
    PORT2->OMR = 0x00000001UL;
}

__STATIC_INLINE void P2_0_reset(void){
    PORT2->OMR = 0x00010000UL;
}

__STATIC_INLINE void P2_0_toggle(void){
    PORT2->OMR = 0x00010001UL;
}

__STATIC_INLINE uint32_t P2_0_read(void){
    return(PORT2->IN & 0x00000001UL);
}

__STATIC_INLINE void P2_0_enable_pps(void){
    PORT2->PPS |= 0x00000001UL;
}

__STATIC_INLINE void P2_0_disable_pps(void){
    PORT2->PPS &= ~0x00000001UL;
}

__STATIC_INLINE void P2_1_set_mode(uint8_t mode){
    PORT2->IOCR0 &= ~0x0000f800UL;
    PORT2->IOCR0 |= mode << 8;
}

__STATIC_INLINE void P2_1_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x0000000cUL;
    PORT2->HWSEL |= config << 2;
}

__STATIC_INLINE void P2_1_set_standard_hysteresis(){
    PORT2->PHCR0 &= ~0x00000040UL;
}

__STATIC_INLINE void P2_1_set_large_hysteresis(){
    PORT2->PHCR0 |= 0x00000040UL;
}

__STATIC_INLINE void P2_1_enable_digital(void){
    PORT2->PDISC &= ~0x00000002UL;
}

__STATIC_INLINE void P2_1_disable_digital(void){
    PORT2->PDISC |= 0x00000002UL;
}

__STATIC_INLINE void P2_1_set(void){
    PORT2->OMR = 0x00000002UL;
}

__STATIC_INLINE void P2_1_reset(void){
    PORT2->OMR = 0x00020000UL;
}

__STATIC_INLINE void P2_1_toggle(void){
    PORT2->OMR = 0x00020002UL;
}

__STATIC_INLINE uint32_t P2_1_read(void){
    return(PORT2->IN & 0x00000002UL);
}

__STATIC_INLINE void P2_1_enable_pps(void){
    PORT2->PPS |= 0x00000002UL;
}

__STATIC_INLINE void P2_1_disable_pps(void){
    PORT2->PPS &= ~0x00000002UL;
}

__STATIC_INLINE void P2_2_set_mode(uint8_t mode){
    PORT2->IOCR0 &= ~0x00f80000UL;
    PORT2->IOCR0 |= mode << 16;
}

__STATIC_INLINE void P2_2_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x00000030UL;
    PORT2->HWSEL |= config << 4;
}

__STATIC_INLINE void P2_2_set_standard_hysteresis(){
    PORT2->PHCR0 &= ~0x00000400UL;
}

__STATIC_INLINE void P2_2_set_large_hysteresis(){
    PORT2->PHCR0 |= 0x00000400UL;
}

__STATIC_INLINE void P2_2_enable_digital(void){
    PORT2->PDISC &= ~0x00000004UL;
}

__STATIC_INLINE void P2_2_disable_digital(void){
    PORT2->PDISC |= 0x00000004UL;
}

__STATIC_INLINE void P2_2_set(void){
    PORT2->OMR = 0x00000004UL;
}

__STATIC_INLINE void P2_2_reset(void){
    PORT2->OMR = 0x00040000UL;
}

__STATIC_INLINE void P2_2_toggle(void){
    PORT2->OMR = 0x00040004UL;
}

__STATIC_INLINE uint32_t P2_2_read(void){
    return(PORT2->IN & 0x00000004UL);
}

__STATIC_INLINE void P2_2_enable_pps(void){
    PORT2->PPS |= 0x00000004UL;
}

__STATIC_INLINE void P2_2_disable_pps(void){
    PORT2->PPS &= ~0x00000004UL;
}

__STATIC_INLINE void P2_3_set_mode(uint8_t mode){
    PORT2->IOCR0 &= ~0xf8000000UL;
    PORT2->IOCR0 |= mode << 24;
}

__STATIC_INLINE void P2_3_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x000000c0UL;
    PORT2->HWSEL |= config << 6;
}

__STATIC_INLINE void P2_3_set_standard_hysteresis(){
    PORT2->PHCR0 &= ~0x00004000UL;
}

__STATIC_INLINE void P2_3_set_large_hysteresis(){
    PORT2->PHCR0 |= 0x00004000UL;
}

__STATIC_INLINE void P2_3_enable_digital(void){
    PORT2->PDISC &= ~0x00000008UL;
}

__STATIC_INLINE void P2_3_disable_digital(void){
    PORT2->PDISC |= 0x00000008UL;
}

__STATIC_INLINE void P2_3_set(void){
    PORT2->OMR = 0x00000008UL;
}

__STATIC_INLINE void P2_3_reset(void){
    PORT2->OMR = 0x00080000UL;
}

__STATIC_INLINE void P2_3_toggle(void){
    PORT2->OMR = 0x00080008UL;
}

__STATIC_INLINE uint32_t P2_3_read(void){
    return(PORT2->IN & 0x00000008UL);
}

__STATIC_INLINE void P2_3_enable_pps(void){
    PORT2->PPS |= 0x00000008UL;
}

__STATIC_INLINE void P2_3_disable_pps(void){
    PORT2->PPS &= ~0x00000008UL;
}

__STATIC_INLINE void P2_4_set_mode(uint8_t mode){
    PORT2->IOCR4 &= ~0x000000f8UL;
    PORT2->IOCR4 |= mode << 0;
}

__STATIC_INLINE void P2_4_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x00000300UL;
    PORT2->HWSEL |= config << 8;
}

__STATIC_INLINE void P2_4_set_standard_hysteresis(){
    PORT2->PHCR0 &= ~0x00040000UL;
}

__STATIC_INLINE void P2_4_set_large_hysteresis(){
    PORT2->PHCR0 |= 0x00040000UL;
}

__STATIC_INLINE void P2_4_enable_digital(void){
    PORT2->PDISC &= ~0x00000010UL;
}

__STATIC_INLINE void P2_4_disable_digital(void){
    PORT2->PDISC |= 0x00000010UL;
}

__STATIC_INLINE void P2_4_set(void){
    PORT2->OMR = 0x00000010UL;
}

__STATIC_INLINE void P2_4_reset(void){
    PORT2->OMR = 0x00100000UL;
}

__STATIC_INLINE void P2_4_toggle(void){
    PORT2->OMR = 0x00100010UL;
}

__STATIC_INLINE uint32_t P2_4_read(void){
    return(PORT2->IN & 0x00000010UL);
}

__STATIC_INLINE void P2_4_enable_pps(void){
    PORT2->PPS |= 0x00000010UL;
}

__STATIC_INLINE void P2_4_disable_pps(void){
    PORT2->PPS &= ~0x00000010UL;
}

__STATIC_INLINE void P2_5_set_mode(uint8_t mode){
    PORT2->IOCR4 &= ~0x0000f800UL;
    PORT2->IOCR4 |= mode << 8;
}

__STATIC_INLINE void P2_5_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x00000c00UL;
    PORT2->HWSEL |= config << 10;
}

__STATIC_INLINE void P2_5_set_standard_hysteresis(){
    PORT2->PHCR0 &= ~0x00400000UL;
}

__STATIC_INLINE void P2_5_set_large_hysteresis(){
    PORT2->PHCR0 |= 0x00400000UL;
}

__STATIC_INLINE void P2_5_enable_digital(void){
    PORT2->PDISC &= ~0x00000020UL;
}

__STATIC_INLINE void P2_5_disable_digital(void){
    PORT2->PDISC |= 0x00000020UL;
}

__STATIC_INLINE void P2_5_set(void){
    PORT2->OMR = 0x00000020UL;
}

__STATIC_INLINE void P2_5_reset(void){
    PORT2->OMR = 0x00200000UL;
}

__STATIC_INLINE void P2_5_toggle(void){
    PORT2->OMR = 0x00200020UL;
}

__STATIC_INLINE uint32_t P2_5_read(void){
    return(PORT2->IN & 0x00000020UL);
}

__STATIC_INLINE void P2_5_enable_pps(void){
    PORT2->PPS |= 0x00000020UL;
}

__STATIC_INLINE void P2_5_disable_pps(void){
    PORT2->PPS &= ~0x00000020UL;
}

__STATIC_INLINE void P2_6_set_mode(uint8_t mode){
    PORT2->IOCR4 &= ~0x00f80000UL;
    PORT2->IOCR4 |= mode << 16;
}

__STATIC_INLINE void P2_6_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x00003000UL;
    PORT2->HWSEL |= config << 12;
}

__STATIC_INLINE void P2_6_set_standard_hysteresis(){
    PORT2->PHCR0 &= ~0x04000000UL;
}

__STATIC_INLINE void P2_6_set_large_hysteresis(){
    PORT2->PHCR0 |= 0x04000000UL;
}

__STATIC_INLINE void P2_6_enable_digital(void){
    PORT2->PDISC &= ~0x00000040UL;
}

__STATIC_INLINE void P2_6_disable_digital(void){
    PORT2->PDISC |= 0x00000040UL;
}

__STATIC_INLINE void P2_6_set(void){
    PORT2->OMR = 0x00000040UL;
}

__STATIC_INLINE void P2_6_reset(void){
    PORT2->OMR = 0x00400000UL;
}

__STATIC_INLINE void P2_6_toggle(void){
    PORT2->OMR = 0x00400040UL;
}

__STATIC_INLINE uint32_t P2_6_read(void){
    return(PORT2->IN & 0x00000040UL);
}

__STATIC_INLINE void P2_6_enable_pps(void){
    PORT2->PPS |= 0x00000040UL;
}

__STATIC_INLINE void P2_6_disable_pps(void){
    PORT2->PPS &= ~0x00000040UL;
}

__STATIC_INLINE void P2_7_set_mode(uint8_t mode){
    PORT2->IOCR4 &= ~0xf8000000UL;
    PORT2->IOCR4 |= mode << 24;
}

__STATIC_INLINE void P2_7_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x0000c000UL;
    PORT2->HWSEL |= config << 14;
}

__STATIC_INLINE void P2_7_set_standard_hysteresis(){
    PORT2->PHCR0 &= ~0x40000000UL;
}

__STATIC_INLINE void P2_7_set_large_hysteresis(){
    PORT2->PHCR0 |= 0x40000000UL;
}

__STATIC_INLINE void P2_7_enable_digital(void){
    PORT2->PDISC &= ~0x00000080UL;
}

__STATIC_INLINE void P2_7_disable_digital(void){
    PORT2->PDISC |= 0x00000080UL;
}

__STATIC_INLINE void P2_7_set(void){
    PORT2->OMR = 0x00000080UL;
}

__STATIC_INLINE void P2_7_reset(void){
    PORT2->OMR = 0x00800000UL;
}

__STATIC_INLINE void P2_7_toggle(void){
    PORT2->OMR = 0x00800080UL;
}

__STATIC_INLINE uint32_t P2_7_read(void){
    return(PORT2->IN & 0x00000080UL);
}

__STATIC_INLINE void P2_7_enable_pps(void){
    PORT2->PPS |= 0x00000080UL;
}

__STATIC_INLINE void P2_7_disable_pps(void){
    PORT2->PPS &= ~0x00000080UL;
}

__STATIC_INLINE void P2_8_set_mode(uint8_t mode){
    PORT2->IOCR8 &= ~0x000000f8UL;
    PORT2->IOCR8 |= mode << 0;
}

__STATIC_INLINE void P2_8_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x00030000UL;
    PORT2->HWSEL |= config << 16;
}

__STATIC_INLINE void P2_8_set_standard_hysteresis(){
    PORT2->PHCR1 &= ~0x00000004UL;
}

__STATIC_INLINE void P2_8_set_large_hysteresis(){
    PORT2->PHCR1 |= 0x00000004UL;
}

__STATIC_INLINE void P2_8_enable_digital(void){
    PORT2->PDISC &= ~0x00000100UL;
}

__STATIC_INLINE void P2_8_disable_digital(void){
    PORT2->PDISC |= 0x00000100UL;
}

__STATIC_INLINE void P2_8_set(void){
    PORT2->OMR = 0x00000100UL;
}

__STATIC_INLINE void P2_8_reset(void){
    PORT2->OMR = 0x01000000UL;
}

__STATIC_INLINE void P2_8_toggle(void){
    PORT2->OMR = 0x01000100UL;
}

__STATIC_INLINE uint32_t P2_8_read(void){
    return(PORT2->IN & 0x00000100UL);
}

__STATIC_INLINE void P2_8_enable_pps(void){
    PORT2->PPS |= 0x00000100UL;
}

__STATIC_INLINE void P2_8_disable_pps(void){
    PORT2->PPS &= ~0x00000100UL;
}

__STATIC_INLINE void P2_9_set_mode(uint8_t mode){
    PORT2->IOCR8 &= ~0x0000f800UL;
    PORT2->IOCR8 |= mode << 8;
}

__STATIC_INLINE void P2_9_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x000c0000UL;
    PORT2->HWSEL |= config << 18;
}

__STATIC_INLINE void P2_9_set_standard_hysteresis(){
    PORT2->PHCR1 &= ~0x00000040UL;
}

__STATIC_INLINE void P2_9_set_large_hysteresis(){
    PORT2->PHCR1 |= 0x00000040UL;
}

__STATIC_INLINE void P2_9_enable_digital(void){
    PORT2->PDISC &= ~0x00000200UL;
}

__STATIC_INLINE void P2_9_disable_digital(void){
    PORT2->PDISC |= 0x00000200UL;
}

__STATIC_INLINE void P2_9_set(void){
    PORT2->OMR = 0x00000200UL;
}

__STATIC_INLINE void P2_9_reset(void){
    PORT2->OMR = 0x02000000UL;
}

__STATIC_INLINE void P2_9_toggle(void){
    PORT2->OMR = 0x02000200UL;
}

__STATIC_INLINE uint32_t P2_9_read(void){
    return(PORT2->IN & 0x00000200UL);
}

__STATIC_INLINE void P2_9_enable_pps(void){
    PORT2->PPS |= 0x00000200UL;
}

__STATIC_INLINE void P2_9_disable_pps(void){
    PORT2->PPS &= ~0x00000200UL;
}

__STATIC_INLINE void P2_10_set_mode(uint8_t mode){
    PORT2->IOCR8 &= ~0x00f80000UL;
    PORT2->IOCR8 |= mode << 16;
}

__STATIC_INLINE void P2_10_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x00300000UL;
    PORT2->HWSEL |= config << 20;
}

__STATIC_INLINE void P2_10_set_standard_hysteresis(){
    PORT2->PHCR1 &= ~0x00000400UL;
}

__STATIC_INLINE void P2_10_set_large_hysteresis(){
    PORT2->PHCR1 |= 0x00000400UL;
}

__STATIC_INLINE void P2_10_enable_digital(void){
    PORT2->PDISC &= ~0x00000400UL;
}

__STATIC_INLINE void P2_10_disable_digital(void){
    PORT2->PDISC |= 0x00000400UL;
}

__STATIC_INLINE void P2_10_set(void){
    PORT2->OMR = 0x00000400UL;
}

__STATIC_INLINE void P2_10_reset(void){
    PORT2->OMR = 0x04000000UL;
}

__STATIC_INLINE void P2_10_toggle(void){
    PORT2->OMR = 0x04000400UL;
}

__STATIC_INLINE uint32_t P2_10_read(void){
    return(PORT2->IN & 0x00000400UL);
}

__STATIC_INLINE void P2_10_enable_pps(void){
    PORT2->PPS |= 0x00000400UL;
}

__STATIC_INLINE void P2_10_disable_pps(void){
    PORT2->PPS &= ~0x00000400UL;
}

__STATIC_INLINE void P2_11_set_mode(uint8_t mode){
    PORT2->IOCR8 &= ~0xf8000000UL;
    PORT2->IOCR8 |= mode << 24;
}

__STATIC_INLINE void P2_11_set_hwsel(uint32_t config){
    PORT2->HWSEL &= ~0x00c00000UL;
    PORT2->HWSEL |= config << 22;
}

__STATIC_INLINE void P2_11_set_standard_hysteresis(){
    PORT2->PHCR1 &= ~0x00004000UL;
}

__STATIC_INLINE void P2_11_set_large_hysteresis(){
    PORT2->PHCR1 |= 0x00004000UL;
}

__STATIC_INLINE void P2_11_enable_digital(void){
    PORT2->PDISC &= ~0x00000800UL;
}

__STATIC_INLINE void P2_11_disable_digital(void){
    PORT2->PDISC |= 0x00000800UL;
}

__STATIC_INLINE void P2_11_set(void){
    PORT2->OMR = 0x00000800UL;
}

__STATIC_INLINE void P2_11_reset(void){
    PORT2->OMR = 0x08000000UL;
}

__STATIC_INLINE void P2_11_toggle(void){
    PORT2->OMR = 0x08000800UL;
}

__STATIC_INLINE uint32_t P2_11_read(void){
    return(PORT2->IN & 0x00000800UL);
}

__STATIC_INLINE void P2_11_enable_pps(void){
    PORT2->PPS |= 0x00000800UL;
}

__STATIC_INLINE void P2_11_disable_pps(void){
    PORT2->PPS &= ~0x00000800UL;
}

#endif
