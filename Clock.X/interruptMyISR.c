/*
 * File:   interrupMyISR.c
 * Author: Mamadu Balde
 *
 * Created on 20 April 2017, 01:06
 */
#include <xc.h>
#include "ADClib.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

void interrupt MyISR(void) {
    {

        // Execute Timer0 overflow interrupt specific code
        if (RD6 == 1 && alarmActivator == 1) {
            if (timeRepeated < 20) { // if that is ture
                overflowInt++; // increment the overflowInterrupt
                TMR0 = 0; // TMR0 Preset value = 0
                if (overflowInt < 25) {
                    RD7 = 1; // toggle RD7

                } else if (overflowInt < 75) {
                    RD7 = 0;

                } else if (overflowInt >= 75) {
                    overflowInt = 0;
                    timeRepeated++;
                }
            } else {
                alarmActivator = 0;
                timeRepeated = 0;
            }
        }
        INTCONbits.TMR0IF = 0;
    }
    if (RBIF == 1) {
        if (RB7 == 1) {
            RD6 = !RD6;
           timeRepeated = 0;

        }

        INTCONbits.RBIF = 0;
    }
}