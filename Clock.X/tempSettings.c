/*
 * File:   tempSettings.c
 * Author: Mamadu Balde
 *
 * Created on 21 April 2017, 10:24
 */
#include <xc.h>
#include "ADClib.h"
#include "LCDdrive.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

char setTemperatureUnit(void) { // function call for the temperature
    unsigned int a = 0; // line1
    unsigned int b = 1; // line2
    unsigned int c = 0; // menu
    LCD_clear();
    LCD_cursor(0, 0);
    LCD_putch('>'); // selection sign
    LCD_cursor(2, 0); // first line postion 2
    LCD_putsc(temperatureMenu[0]); // get the first item
    LCD_cursor(2, 1); // second line position 2
    LCD_putsc(temperatureMenu[1]); // get the second item

    while (1) {
        __delay_ms(100);

        //  cursor up to select configuration item
        if (RD0 == 1) {

            LCD_clear();
            LCD_cursor(0, 0); // lcd cursor to the first position
            LCD_putch('>');
            LCD_cursor(2, 0);
            LCD_putsc(temperatureMenu[a]); // display first item
            LCD_cursor(2, 1);
            LCD_putsc(temperatureMenu[b]); // display  the second item on lcd
            c = a;
            if (a > 0) {
                a--;
                b--;
            }

        }
        //  cursor down select configuration item
        if (RD1 == 1) {

            LCD_clear();
            LCD_cursor(2, 0);
            LCD_putsc(temperatureMenu[a]);
            LCD_cursor(0, 1);
            LCD_putch('>');
            LCD_cursor(2, 1);
            LCD_putsc(temperatureMenu[b]);
            c = b;
            if (a < 0) {
                a++; // increment first value
                b++; // increment second value
            }
        }
        // select option from the hardware
        // RD2 selec/set

        if (RD2 == 1) {
            if (c == 0)
                return 'C';
            else
                return 'F';

        }
        // break and go back
        if (RD3 == 1) {
            break;
        }

    }

}

