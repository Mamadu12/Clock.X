/*
 * File:   TMR1Delay.c
 * Author: Mamadu Balde
 *
 * Created on 20 April 2017, 01:54
 */
#include <xc.h>
#include "ADClib.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

void TMR1Delay(unsigned char delay) {
    unsigned int x; // Define variable for loop index
    T1CON = 0x30; // Set prescaler to 1:8

    for (x = 0; x < 2 * delay; x++) // Setup delay loop
    {
        T1CONbits.TMR1ON = 0; // Turn Timer 1 OFF
        TMR1H = 0x38; // Load High byte
        TMR1L = 0x00; // Load low byte
        T1CONbits.TMR1ON = 1; // Turn Timer 1 ON
        while (!PIR1bits.TMR1IF); // Wait for overflow (500 ms)
        PIR1bits.TMR1IF = 0; // Clear interrupt flag
    }
}

