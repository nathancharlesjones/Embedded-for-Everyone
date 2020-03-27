# 1 "CMSIS/Infineon/XMC1100_series/Source/GCC/startup_XMC1100.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "CMSIS/Infineon/XMC1100_series/Source/GCC/startup_XMC1100.S"
# 114 "CMSIS/Infineon/XMC1100_series/Source/GCC/startup_XMC1100.S"
.macro Entry Handler
    .long \Handler
.endm


.macro Insert_ExceptionHandler Handler_Func
    .weak \Handler_Func
    .thumb_set \Handler_Func, Default_handler
.endm



    .syntax unified
    .cpu cortex-m0

    .section .reset, "a", %progbits

  .align 2

    .globl __Vectors
    .type __Vectors, %object
__Vectors:
    .long __initial_sp
    .long Reset_Handler




    .long 0
    Entry HardFault_Handler
    .long 0x00010400
    .long 0x80000000
# 193 "CMSIS/Infineon/XMC1100_series/Source/GCC/startup_XMC1100.S"
    .size __Vectors, . - __Vectors




    .thumb
 .align 1


    .thumb_func
    .globl Reset_Handler
    .type Reset_Handler, %function
Reset_Handler:

 ldr r1, =eROData
 ldr r2, =VeneerStart
 ldr r3, =VeneerEnd
 bl __copy_data

    ldr r0, =SystemInit
    blx r0


 ldr r1, =DataLoadAddr
 ldr r2, =__data_start
 ldr r3, =__data_end
 bl __copy_data


 ldr r1, =__ram_code_load
 ldr r2, =__ram_code_start
 ldr r3, =__ram_code_end
 bl __copy_data
# 235 "CMSIS/Infineon/XMC1100_series/Source/GCC/startup_XMC1100.S"
 ldr r1, =__bss_start
 ldr r2, =__bss_end

 movs r0, 0

 subs r2, r1
 ble .L_loop3_done

.L_loop3:
 subs r2, #4
 str r0, [r1, r2]
 bgt .L_loop3
.L_loop3_done:



    ldr r0, =__libc_init_array
    blx r0


    ldr r0, =main
    blx r0

    .thumb_func
    .type __copy_data, %function
__copy_data:
# 269 "CMSIS/Infineon/XMC1100_series/Source/GCC/startup_XMC1100.S"
 subs r3, r2
 ble .L_loop_done

.L_loop:
 subs r3, #4
 ldr r0, [r1,r3]
 str r0, [r2,r3]
 bgt .L_loop

.L_loop_done:
 bx lr

 .pool
    .size Reset_Handler,.-Reset_Handler



 .align 1

    .thumb_func
    .weak Default_handler
    .type Default_handler, %function
Default_handler:
    b .
    .size Default_handler, . - Default_handler

    Insert_ExceptionHandler HardFault_Handler
    Insert_ExceptionHandler SVC_Handler
    Insert_ExceptionHandler PendSV_Handler
    Insert_ExceptionHandler SysTick_Handler

    Insert_ExceptionHandler SCU_0_IRQHandler
    Insert_ExceptionHandler SCU_1_IRQHandler
    Insert_ExceptionHandler SCU_2_IRQHandler
    Insert_ExceptionHandler ERU0_0_IRQHandler
    Insert_ExceptionHandler ERU0_1_IRQHandler
    Insert_ExceptionHandler ERU0_2_IRQHandler
    Insert_ExceptionHandler ERU0_3_IRQHandler
    Insert_ExceptionHandler VADC0_C0_0_IRQHandler
    Insert_ExceptionHandler VADC0_C0_1_IRQHandler
    Insert_ExceptionHandler CCU40_0_IRQHandler
    Insert_ExceptionHandler CCU40_1_IRQHandler
    Insert_ExceptionHandler CCU40_2_IRQHandler
    Insert_ExceptionHandler CCU40_3_IRQHandler
    Insert_ExceptionHandler USIC0_0_IRQHandler
    Insert_ExceptionHandler USIC0_1_IRQHandler
    Insert_ExceptionHandler USIC0_2_IRQHandler
    Insert_ExceptionHandler USIC0_3_IRQHandler
    Insert_ExceptionHandler USIC0_4_IRQHandler
    Insert_ExceptionHandler USIC0_5_IRQHandler




    .section ".XmcVeneerCode","ax",%progbits

    .align 1

    .globl HardFault_Veneer
HardFault_Veneer:
    LDR R0, =HardFault_Handler
    MOV PC,R0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0


    .globl SVC_Veneer
SVC_Veneer:
    LDR R0, =SVC_Handler
    MOV PC,R0
    .long 0
    .long 0

    .globl PendSV_Veneer
PendSV_Veneer:
    LDR R0, =PendSV_Handler
    MOV PC,R0

    .globl SysTick_Veneer
SysTick_Veneer:
    LDR R0, =SysTick_Handler
    MOV PC,R0

    .globl SCU_0_Veneer
SCU_0_Veneer:
    LDR R0, =SCU_0_IRQHandler
    MOV PC,R0

    .globl SCU_1_Veneer
SCU_1_Veneer:
    LDR R0, =SCU_1_IRQHandler
    MOV PC,R0

    .globl SCU_2_Veneer
SCU_2_Veneer:
    LDR R0, =SCU_2_IRQHandler
    MOV PC,R0

    .globl SCU_3_Veneer
SCU_3_Veneer:
    LDR R0, =ERU0_0_IRQHandler
    MOV PC,R0

    .globl SCU_4_Veneer
SCU_4_Veneer:
    LDR R0, =ERU0_1_IRQHandler
    MOV PC,R0

    .globl SCU_5_Veneer
SCU_5_Veneer:
    LDR R0, =ERU0_2_IRQHandler
    MOV PC,R0

    .globl SCU_6_Veneer
SCU_6_Veneer:
    LDR R0, =ERU0_3_IRQHandler
    MOV PC,R0
    .long 0
    .long 0

    .globl USIC0_0_Veneer
USIC0_0_Veneer:
    LDR R0, =USIC0_0_IRQHandler
    MOV PC,R0

    .globl USIC0_1_Veneer
USIC0_1_Veneer:
    LDR R0, =USIC0_1_IRQHandler
    MOV PC,R0

    .globl USIC0_2_Veneer
USIC0_2_Veneer:
    LDR R0, =USIC0_2_IRQHandler
    MOV PC,R0

    .globl USIC0_3_Veneer
USIC0_3_Veneer:
    LDR R0, =USIC0_3_IRQHandler
    MOV PC,R0

    .globl USIC0_4_Veneer
USIC0_4_Veneer:
    LDR R0, =USIC0_4_IRQHandler
    MOV PC,R0

    .globl USIC0_5_Veneer
USIC0_5_Veneer:
    LDR R0, =USIC0_5_IRQHandler
    MOV PC,R0

    .globl VADC0_C0_0_Veneer
VADC0_C0_0_Veneer:
    LDR R0, =VADC0_C0_0_IRQHandler
    MOV PC,R0

    .globl VADC0_C0_1_Veneer
VADC0_C0_1_Veneer:
    LDR R0, =VADC0_C0_1_IRQHandler
    MOV PC,R0
    .long 0
    .long 0
    .long 0
    .long 0

    .globl CCU40_0_Veneer
CCU40_0_Veneer:
    LDR R0, =CCU40_0_IRQHandler
    MOV PC,R0

    .globl CCU40_1_Veneer
CCU40_1_Veneer:
    LDR R0, =CCU40_1_IRQHandler
    MOV PC,R0

    .globl CCU40_2_Veneer
CCU40_2_Veneer:
    LDR R0, =CCU40_2_IRQHandler
    MOV PC,R0

    .globl CCU40_3_Veneer
CCU40_3_Veneer:
    LDR R0, =CCU40_3_IRQHandler
    MOV PC,R0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0






    .end
