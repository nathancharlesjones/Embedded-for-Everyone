/*
 * Copyright (C) 2014 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use
 * with Infineon's microcontrollers.
 * This file can be freely distributed within development tools that are
 * supporting such microcontrollers.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS". NO WARRANTIES, WHETHER EXPRESS,
 * IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS
 * SOFTWARE. INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR
 * SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */

/**
 * @file main.c
 * @date 26 Sep, 2018
 * @version 0.1.0
 *
 * @brief Single Channel Conversion - Using the Background Source
 *
 * This example shows how to convert a single channel using the background
 * source. The background source is continuously requesting the conversion
 * of channel 5. The result is stored in the result register and read out
 * in the while loop of main.c.
 *
 * Hardware setup:
 * For download and debug, connect USB to the Boot Kit XMC1300 Board
 * (KIT_XMC1_BOOT_001) USB port.
 *
 * Download and start project.
 * While debugging, the analog value will be available in the variable
 * "result".
 *
 * Following resources are used:
 *  VADC channel 5
 *  Port P2.0 VADC input
 *
 * History
 *
 * Version 0.1.0 Initial
 *
 */

/***************************************************************************
 * HEADER FILES
 **************************************************************************/
#include <xmc_vadc.h>

/***************************************************************************
 * CONFIGURATION
 **************************************************************************/

/* VADC group data configuration. No configuration needed, standard values
 * are used. */

/* Data configuration for background source. */
const XMC_VADC_BACKGROUND_CONFIG_t g_bgn_handle = {
		.asctrl =0,
		.asmr = 0,
		.conv_start_mode = XMC_VADC_STARTMODE_WFS,
		.req_src_priority = XMC_VADC_GROUP_RS_PRIORITY_0,

};

/* VADC Global resources data configuration. No configuration needed,
 * standard values are used. */
 const XMC_VADC_GLOBAL_CONFIG_t g_global_handle = {
		.wait_for_read_mode = 1,
		.class0.conversion_mode_standard = XMC_VADC_CONVMODE_12BIT,
		.class0.sample_time_std_conv = 0,
};

/***************************************************************************
 * GLOBAL DATA
 **************************************************************************/
XMC_VADC_DETAILED_RESULT_t result_d;
uint32_t result;

/***************************************************************************
 * FUNCTION IMPLEMENTATION
 **************************************************************************/
int main(void) {

    /* Clock is already initialized by startup code. */

    /* ****************************** VADC ****************************** */
    /* Provide clock to VADC and initialize the VADC global registers. */
    XMC_VADC_GLOBAL_Init(VADC, &g_global_handle);

    /* Calibrate the VADC. Make sure you do this after all used VADC groups
     * are set to normal operation mode. */
    XMC_VADC_GLOBAL_StartupCalibration(VADC);

    /* Initialize the background source hardware. The gating mode is set to
     * ignore to pass external triggers unconditionally.*/
    XMC_VADC_GLOBAL_BackgroundInit(VADC, &g_bgn_handle);

    /* Add a channel to the background source. */
    XMC_VADC_GLOBAL_BackgroundAddChannelToSequence(VADC, 0, 5);

    /* Enables autoscan feature for continuous conversion. */
    XMC_VADC_GLOBAL_BackgroundEnableContinuousMode(VADC);

    /* Generate conversion request (load event). */
    XMC_VADC_GLOBAL_BackgroundTriggerConversion(VADC);

    /* ****************************** Loop ****************************** */
    while (1U) {
        /* Retrieve result from result register. */
        result =  XMC_VADC_GLOBAL_GetDetailedResult(VADC);  // can be typcast to XMC_VADC_DETAILED_RESULT_t
    }
}
