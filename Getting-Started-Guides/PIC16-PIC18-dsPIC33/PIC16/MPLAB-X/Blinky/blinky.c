/*
 * File:   blinky.c
 * Author: nathancharlesjones
 *
 * Created on October 22, 2019, 12:50 PM
 */


#include <xc.h>

void main(void) {
    while (1) {
        LED_BUILTIN = !LED_BUILTIN;
    }
    
    return;
}
