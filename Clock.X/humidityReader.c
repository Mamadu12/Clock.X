/*
 * File:   humidityReader.c
 * Author: Mamadu Balde
 *
 * Created on 21 April 2017, 01:06
 */
#include <xc.h>
#include "ADClib.h"
#include "LCDdrive.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

void humidityReader(void) {
    ADC_channel_select(1); // This selects which analogue input
    // to use for the ADC conversion
    float Humidity = ((float) ADC_read() / 1023)*100; // float value for the humidity

    // the relative value displayed during running mode vary between approx 10% and 90%
    Humidity = (10 + (Humidity * (90 - 10) / 100));
    LCD_display_float(Humidity, 1); //display the current relative humidity (screen 3)
    LCD_putch('%'); //percentage string

}
