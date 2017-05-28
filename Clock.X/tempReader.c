/*
 * File:   tempReader.c
 * Author: Mamadu Balde
 *
 * Created on 20 April 2017, 01:06
 */
#include <xc.h>
#include "ADClib.h"
#include "LCDdrive.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

void temperatureReader(void) { // function call for the temperature reader

    ADC_channel_select(0); // This selects which analogue input
    // to use for the ADC conversion
    float TemperatureT = ((float) ADC_read() / 1023)*100; // LCDdrive float functions provided
    TemperatureT = ((TemperatureT * (50 - (-40)) / 100) - 40); // initial temperature is set to centigrade
    // the highest possible value(-) the lowest possible value(/)100 and (-) 40

    if (temperature == 'F')
        temperature = (TemperatureT * 1.8) + 32; // the temperature conversion from C to F
    // this above assignment could be written also as
    // temperature = ((TemperatureT *9) /5 )+ 32

    LCD_display_float(TemperatureT, 1); // display the current temperature (screen 2)
    LCD_putsc("deg ");
    LCD_putch(temperature);

}