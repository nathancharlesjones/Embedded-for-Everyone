# 1 "setup/startup_LPC845.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "setup/startup_LPC845.S"
# 18 "setup/startup_LPC845.S"
    .syntax unified
    .arch armv6-m

    .section .isr_vector, "a"
    .align 2
    .globl __Vectors
__Vectors:
    .long __StackTop
    .long Reset_Handler
    .long NMI_Handler
    .long HardFault_Handler
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long SVC_Handler
    .long 0
    .long 0
    .long PendSV_Handler
    .long SysTick_Handler


    .long SPI0_IRQHandler
    .long SPI1_IRQHandler
    .long DAC0_IRQHandler
    .long USART0_IRQHandler
    .long USART1_IRQHandler
    .long USART2_IRQHandler
    .long Reserved22_IRQHandler
    .long I2C1_IRQHandler
    .long I2C0_IRQHandler
    .long SCT0_IRQHandler
    .long MRT0_IRQHandler
    .long CMP_CAPT_IRQHandler
    .long WDT_IRQHandler
    .long BOD_IRQHandler
    .long FLASH_IRQHandler
    .long WKT_IRQHandler
    .long ADC0_SEQA_IRQHandler
    .long ADC0_SEQB_IRQHandler
    .long ADC0_THCMP_IRQHandler
    .long ADC0_OVR_IRQHandler
    .long DMA0_IRQHandler
    .long I2C2_IRQHandler
    .long I2C3_IRQHandler
    .long CTIMER0_IRQHandler
    .long PIN_INT0_IRQHandler
    .long PIN_INT1_IRQHandler
    .long PIN_INT2_IRQHandler
    .long PIN_INT3_IRQHandler
    .long PIN_INT4_IRQHandler
    .long PIN_INT5_DAC1_IRQHandler
    .long PIN_INT6_USART3_IRQHandler
    .long PIN_INT7_USART4_IRQHandler

    .size __Vectors, . - __Vectors

   .text
    .thumb


    .thumb_func
    .align 2
    .globl Reset_Handler
    .weak Reset_Handler
    .type Reset_Handler, %function
Reset_Handler:
    cpsid i


    ldr r0,=SystemInit
    blx r0
# 101 "setup/startup_LPC845.S"
    ldr r1, =__etext
    ldr r2, =__data_start__
    ldr r3, =__data_end__

    subs r3, r2
    ble .LC0

.LC1:
    subs r3, 4
    ldr r0, [r1,r3]
    str r0, [r2,r3]
    bgt .LC1
.LC0:
# 137 "setup/startup_LPC845.S"
    cpsie i





    ldr r0,=_start
    blx r0






    .pool
    .size Reset_Handler, . - Reset_Handler

    .align 1
    .thumb_func
    .weak DefaultISR
    .type DefaultISR, %function
DefaultISR:
    ldr r0, =DefaultISR
    bx r0
    .size DefaultISR, . - DefaultISR

    .align 1
    .thumb_func
    .weak NMI_Handler
    .type NMI_Handler, %function
NMI_Handler:
    ldr r0,=NMI_Handler
    bx r0
    .size NMI_Handler, . - NMI_Handler

    .align 1
    .thumb_func
    .weak HardFault_Handler
    .type HardFault_Handler, %function
HardFault_Handler:
    ldr r0,=HardFault_Handler
    bx r0
    .size HardFault_Handler, . - HardFault_Handler

    .align 1
    .thumb_func
    .weak SVC_Handler
    .type SVC_Handler, %function
SVC_Handler:
    ldr r0,=SVC_Handler
    bx r0
    .size SVC_Handler, . - SVC_Handler

    .align 1
    .thumb_func
    .weak PendSV_Handler
    .type PendSV_Handler, %function
PendSV_Handler:
    ldr r0,=PendSV_Handler
    bx r0
    .size PendSV_Handler, . - PendSV_Handler

    .align 1
    .thumb_func
    .weak SysTick_Handler
    .type SysTick_Handler, %function
SysTick_Handler:
    ldr r0,=SysTick_Handler
    bx r0
    .size SysTick_Handler, . - SysTick_Handler

    .align 1
    .thumb_func
    .weak SPI0_IRQHandler
    .type SPI0_IRQHandler, %function
SPI0_IRQHandler:
    ldr r0,=SPI0_DriverIRQHandler
    bx r0
    .size SPI0_IRQHandler, . - SPI0_IRQHandler

    .align 1
    .thumb_func
    .weak SPI1_IRQHandler
    .type SPI1_IRQHandler, %function
SPI1_IRQHandler:
    ldr r0,=SPI1_DriverIRQHandler
    bx r0
    .size SPI1_IRQHandler, . - SPI1_IRQHandler

    .align 1
    .thumb_func
    .weak DAC0_IRQHandler
    .type DAC0_IRQHandler, %function
DAC0_IRQHandler:
    ldr r0,=DAC0_DriverIRQHandler
    bx r0
    .size DAC0_IRQHandler, . - DAC0_IRQHandler

    .align 1
    .thumb_func
    .weak USART0_IRQHandler
    .type USART0_IRQHandler, %function
USART0_IRQHandler:
    ldr r0,=USART0_DriverIRQHandler
    bx r0
    .size USART0_IRQHandler, . - USART0_IRQHandler

    .align 1
    .thumb_func
    .weak USART1_IRQHandler
    .type USART1_IRQHandler, %function
USART1_IRQHandler:
    ldr r0,=USART1_DriverIRQHandler
    bx r0
    .size USART1_IRQHandler, . - USART1_IRQHandler

    .align 1
    .thumb_func
    .weak USART2_IRQHandler
    .type USART2_IRQHandler, %function
USART2_IRQHandler:
    ldr r0,=USART2_DriverIRQHandler
    bx r0
    .size USART2_IRQHandler, . - USART2_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved22_IRQHandler
    .type Reserved22_IRQHandler, %function
Reserved22_IRQHandler:
    ldr r0,=Reserved22_DriverIRQHandler
    bx r0
    .size Reserved22_IRQHandler, . - Reserved22_IRQHandler

    .align 1
    .thumb_func
    .weak I2C1_IRQHandler
    .type I2C1_IRQHandler, %function
I2C1_IRQHandler:
    ldr r0,=I2C1_DriverIRQHandler
    bx r0
    .size I2C1_IRQHandler, . - I2C1_IRQHandler

    .align 1
    .thumb_func
    .weak I2C0_IRQHandler
    .type I2C0_IRQHandler, %function
I2C0_IRQHandler:
    ldr r0,=I2C0_DriverIRQHandler
    bx r0
    .size I2C0_IRQHandler, . - I2C0_IRQHandler

    .align 1
    .thumb_func
    .weak SCT0_IRQHandler
    .type SCT0_IRQHandler, %function
SCT0_IRQHandler:
    ldr r0,=SCT0_DriverIRQHandler
    bx r0
    .size SCT0_IRQHandler, . - SCT0_IRQHandler

    .align 1
    .thumb_func
    .weak MRT0_IRQHandler
    .type MRT0_IRQHandler, %function
MRT0_IRQHandler:
    ldr r0,=MRT0_DriverIRQHandler
    bx r0
    .size MRT0_IRQHandler, . - MRT0_IRQHandler

    .align 1
    .thumb_func
    .weak CMP_CAPT_IRQHandler
    .type CMP_CAPT_IRQHandler, %function
CMP_CAPT_IRQHandler:
    ldr r0,=CMP_CAPT_DriverIRQHandler
    bx r0
    .size CMP_CAPT_IRQHandler, . - CMP_CAPT_IRQHandler

    .align 1
    .thumb_func
    .weak WDT_IRQHandler
    .type WDT_IRQHandler, %function
WDT_IRQHandler:
    ldr r0,=WDT_DriverIRQHandler
    bx r0
    .size WDT_IRQHandler, . - WDT_IRQHandler

    .align 1
    .thumb_func
    .weak BOD_IRQHandler
    .type BOD_IRQHandler, %function
BOD_IRQHandler:
    ldr r0,=BOD_DriverIRQHandler
    bx r0
    .size BOD_IRQHandler, . - BOD_IRQHandler

    .align 1
    .thumb_func
    .weak FLASH_IRQHandler
    .type FLASH_IRQHandler, %function
FLASH_IRQHandler:
    ldr r0,=FLASH_DriverIRQHandler
    bx r0
    .size FLASH_IRQHandler, . - FLASH_IRQHandler

    .align 1
    .thumb_func
    .weak WKT_IRQHandler
    .type WKT_IRQHandler, %function
WKT_IRQHandler:
    ldr r0,=WKT_DriverIRQHandler
    bx r0
    .size WKT_IRQHandler, . - WKT_IRQHandler

    .align 1
    .thumb_func
    .weak ADC0_SEQA_IRQHandler
    .type ADC0_SEQA_IRQHandler, %function
ADC0_SEQA_IRQHandler:
    ldr r0,=ADC0_SEQA_DriverIRQHandler
    bx r0
    .size ADC0_SEQA_IRQHandler, . - ADC0_SEQA_IRQHandler

    .align 1
    .thumb_func
    .weak ADC0_SEQB_IRQHandler
    .type ADC0_SEQB_IRQHandler, %function
ADC0_SEQB_IRQHandler:
    ldr r0,=ADC0_SEQB_DriverIRQHandler
    bx r0
    .size ADC0_SEQB_IRQHandler, . - ADC0_SEQB_IRQHandler

    .align 1
    .thumb_func
    .weak ADC0_THCMP_IRQHandler
    .type ADC0_THCMP_IRQHandler, %function
ADC0_THCMP_IRQHandler:
    ldr r0,=ADC0_THCMP_DriverIRQHandler
    bx r0
    .size ADC0_THCMP_IRQHandler, . - ADC0_THCMP_IRQHandler

    .align 1
    .thumb_func
    .weak ADC0_OVR_IRQHandler
    .type ADC0_OVR_IRQHandler, %function
ADC0_OVR_IRQHandler:
    ldr r0,=ADC0_OVR_DriverIRQHandler
    bx r0
    .size ADC0_OVR_IRQHandler, . - ADC0_OVR_IRQHandler

    .align 1
    .thumb_func
    .weak DMA0_IRQHandler
    .type DMA0_IRQHandler, %function
DMA0_IRQHandler:
    ldr r0,=DMA0_DriverIRQHandler
    bx r0
    .size DMA0_IRQHandler, . - DMA0_IRQHandler

    .align 1
    .thumb_func
    .weak I2C2_IRQHandler
    .type I2C2_IRQHandler, %function
I2C2_IRQHandler:
    ldr r0,=I2C2_DriverIRQHandler
    bx r0
    .size I2C2_IRQHandler, . - I2C2_IRQHandler

    .align 1
    .thumb_func
    .weak I2C3_IRQHandler
    .type I2C3_IRQHandler, %function
I2C3_IRQHandler:
    ldr r0,=I2C3_DriverIRQHandler
    bx r0
    .size I2C3_IRQHandler, . - I2C3_IRQHandler

    .align 1
    .thumb_func
    .weak CTIMER0_IRQHandler
    .type CTIMER0_IRQHandler, %function
CTIMER0_IRQHandler:
    ldr r0,=CTIMER0_DriverIRQHandler
    bx r0
    .size CTIMER0_IRQHandler, . - CTIMER0_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT0_IRQHandler
    .type PIN_INT0_IRQHandler, %function
PIN_INT0_IRQHandler:
    ldr r0,=PIN_INT0_DriverIRQHandler
    bx r0
    .size PIN_INT0_IRQHandler, . - PIN_INT0_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT1_IRQHandler
    .type PIN_INT1_IRQHandler, %function
PIN_INT1_IRQHandler:
    ldr r0,=PIN_INT1_DriverIRQHandler
    bx r0
    .size PIN_INT1_IRQHandler, . - PIN_INT1_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT2_IRQHandler
    .type PIN_INT2_IRQHandler, %function
PIN_INT2_IRQHandler:
    ldr r0,=PIN_INT2_DriverIRQHandler
    bx r0
    .size PIN_INT2_IRQHandler, . - PIN_INT2_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT3_IRQHandler
    .type PIN_INT3_IRQHandler, %function
PIN_INT3_IRQHandler:
    ldr r0,=PIN_INT3_DriverIRQHandler
    bx r0
    .size PIN_INT3_IRQHandler, . - PIN_INT3_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT4_IRQHandler
    .type PIN_INT4_IRQHandler, %function
PIN_INT4_IRQHandler:
    ldr r0,=PIN_INT4_DriverIRQHandler
    bx r0
    .size PIN_INT4_IRQHandler, . - PIN_INT4_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT5_DAC1_IRQHandler
    .type PIN_INT5_DAC1_IRQHandler, %function
PIN_INT5_DAC1_IRQHandler:
    ldr r0,=PIN_INT5_DAC1_DriverIRQHandler
    bx r0
    .size PIN_INT5_DAC1_IRQHandler, . - PIN_INT5_DAC1_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT6_USART3_IRQHandler
    .type PIN_INT6_USART3_IRQHandler, %function
PIN_INT6_USART3_IRQHandler:
    ldr r0,=PIN_INT6_USART3_DriverIRQHandler
    bx r0
    .size PIN_INT6_USART3_IRQHandler, . - PIN_INT6_USART3_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT7_USART4_IRQHandler
    .type PIN_INT7_USART4_IRQHandler, %function
PIN_INT7_USART4_IRQHandler:
    ldr r0,=PIN_INT7_USART4_DriverIRQHandler
    bx r0
    .size PIN_INT7_USART4_IRQHandler, . - PIN_INT7_USART4_IRQHandler




    .macro def_irq_handler handler_name
    .weak \handler_name
    .set \handler_name, DefaultISR
    .endm
    def_irq_handler SPI0_DriverIRQHandler
    def_irq_handler SPI1_DriverIRQHandler
    def_irq_handler DAC0_DriverIRQHandler
    def_irq_handler USART0_DriverIRQHandler
    def_irq_handler USART1_DriverIRQHandler
    def_irq_handler USART2_DriverIRQHandler
    def_irq_handler Reserved22_DriverIRQHandler
    def_irq_handler I2C1_DriverIRQHandler
    def_irq_handler I2C0_DriverIRQHandler
    def_irq_handler SCT0_DriverIRQHandler
    def_irq_handler MRT0_DriverIRQHandler
    def_irq_handler CMP_CAPT_DriverIRQHandler
    def_irq_handler WDT_DriverIRQHandler
    def_irq_handler BOD_DriverIRQHandler
    def_irq_handler FLASH_DriverIRQHandler
    def_irq_handler WKT_DriverIRQHandler
    def_irq_handler ADC0_SEQA_DriverIRQHandler
    def_irq_handler ADC0_SEQB_DriverIRQHandler
    def_irq_handler ADC0_THCMP_DriverIRQHandler
    def_irq_handler ADC0_OVR_DriverIRQHandler
    def_irq_handler DMA0_DriverIRQHandler
    def_irq_handler I2C2_DriverIRQHandler
    def_irq_handler I2C3_DriverIRQHandler
    def_irq_handler CTIMER0_DriverIRQHandler
    def_irq_handler PIN_INT0_DriverIRQHandler
    def_irq_handler PIN_INT1_DriverIRQHandler
    def_irq_handler PIN_INT2_DriverIRQHandler
    def_irq_handler PIN_INT3_DriverIRQHandler
    def_irq_handler PIN_INT4_DriverIRQHandler
    def_irq_handler PIN_INT5_DAC1_DriverIRQHandler
    def_irq_handler PIN_INT6_USART3_DriverIRQHandler
    def_irq_handler PIN_INT7_USART4_DriverIRQHandler

    .end
