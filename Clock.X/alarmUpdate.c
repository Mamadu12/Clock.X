/*
 * File:   alarmUpdate.c
 * Author: Mamadu Balde
 *
 * Created on 21 April 2017, 11:50
 */
#include <xc.h>
#include "ADClib.h"
#include "LCDdrive.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

/*
 * *********************************************************
 * ****function call for updating the set alarm function ******
 * *********************************************************
 */
void updateSetAlarm(long elapsed_time) { 
    // vars for displaying values
    unsigned char hoursVariable4;
    unsigned char hoursVariable3;
    unsigned char minVariable2;
    unsigned char minVariable1;
    // Variables storing minute & seconds values
    unsigned int hours = elapsed_time / 3600; //Calculate total hours elapsed
    unsigned int remainder = elapsed_time - hours * 3600;
    unsigned int minutes = remainder / 60; //Calculate total minutes remaining

    // values that will be displayed
    minVariable1 = minutes % 10; // last digit for the min counter
    minVariable2 = minutes / 10; // first digit for the min counter
    hoursVariable3 = hours % 10; // second digit for the hour counter
    hoursVariable4 = hours / 10; // first digit for the hour counter

    // the initial alarm time
    LCD_putch('0' + hoursVariable4);
    LCD_putch('0' + hoursVariable3);
    LCD_putch(':');
    LCD_putch('0' + minVariable2);
    LCD_putch('0' + minVariable1);
}

