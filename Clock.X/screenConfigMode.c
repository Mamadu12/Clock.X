/*
 * File:   screenConfigMode.c
 * Author: Mamadu Balde
 *
 * Created on 20 April 2017, 01:06
 */
#include <xc.h>
#include "ADClib.h"
#include "LCDdrive.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

/*
 * LCD screen configuration mode
 * available options
 * lcd putch, write a single character to the lcd
 */
unsigned int screenConfigurationMode(void) {
    unsigned int a = 0; // line1
    unsigned int b = 1; // line2
    unsigned int c = 0; // menu
    LCD_clear();
    LCD_cursor(0, 0);
    LCD_putch('>');
    LCD_cursor(2, 0);
    LCD_putsc(configuration_Options[0]);
    LCD_cursor(2, 1);
    LCD_putsc(configuration_Options[1]);

    while (1) {
        __delay_ms(100);
        if (RD0 == 1) {

            LCD_clear();
            LCD_cursor(0, 0);
            LCD_putch('>');
            LCD_cursor(2, 0);
            LCD_putsc(configuration_Options[a]);
            LCD_cursor(2, 1);
            LCD_putsc(configuration_Options[b]);
            c = a;
            if (a > 0) {
                a--;
                b--;
            }

        }
        // down button
        if (RD1 == 1) {

            LCD_clear(); // clear the lcd
            LCD_cursor(2, 0); // Move cursor to (0,0)
            LCD_putsc(configuration_Options[a]); // display  the first item  on lcd
            LCD_cursor(0, 1); // Move cursor to (0,1)
            LCD_putch('>'); // display  > on lcd
            LCD_cursor(2, 1); // Move cursor to (2,1)
            LCD_putsc(configuration_Options[b]); // display  the second item on lcd
            c = b;
            if (a < 1) {
                a++;
                b++;
            }
        }
        if (RD2 == 1) {
            return c;
        }
        if (RD3 == 1) {
            return 3;
        }

    }

}
