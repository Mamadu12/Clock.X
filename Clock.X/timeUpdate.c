/*
 * File:   timeUpdate.c
 * Author: Mamadu Balde
 *
 * Created on 21 April 2017, 10:49
 */
#include <xc.h>
#include "ADClib.h"
#include "LCDdrive.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

void updateTimeDisplayed(long elapsed_time) { // function call for updating the time
    // setting the clock digits
    unsigned char backSecondDigit;
    unsigned char frontSecondDigit;
    unsigned char backMinuteDigit;
    unsigned char frontMinuteDigit;
    unsigned char backHourDigit;
    unsigned char frontHourDigit;

    // Variables storing minute & seconds values
    unsigned int hours = elapsed_time / 3600; //Calculate total hours elapsed divided by 3600 seconds
    unsigned int remainder = elapsed_time - hours * 3600; //
    unsigned int minutes = remainder / 60; //Calculate total minutes remaining
    remainder = remainder - minutes * 60;
    unsigned int seconds = remainder; //Calculate total second remaining

    // Calculates the digit values ready for display
    frontHourDigit = hours / 10;
    backHourDigit = hours % 10;
    frontMinuteDigit = minutes / 10;
    backMinuteDigit = minutes % 10;
    frontSecondDigit = seconds / 10;
    backSecondDigit = seconds % 10;

    LCD_putch('0' + frontHourDigit);
    LCD_putch('0' + backHourDigit);
    LCD_putch(':');
    LCD_putch('0' + frontMinuteDigit);
    LCD_putch('0' + backMinuteDigit);
    LCD_putch(':'); // spliter
    LCD_putch('0' + frontSecondDigit);
    LCD_putch('0' + backSecondDigit);
}
