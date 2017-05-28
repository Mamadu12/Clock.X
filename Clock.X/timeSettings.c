/*
 * File:   timeSettings.c
 * Author: Mamadu Balde
 *
 * Created on 22 April 2017, 6:40
 */
#include <xc.h>
#include "ADClib.h"
#include "LCDdrive.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

long setTimeDisplayer(void) { // function call for setting the time
    // push Button is represented by pushB
    unsigned char first_Minute_Digit; // first digit for the minutes
    unsigned char second_Minute_Digit; // second digit for the minutes
    unsigned char first_Hour_Digit; // hours first digit
    unsigned char second_Hour_Digit; // hours second digit
    int push_Button = 0; // push Button combined with RD0 and RD1
    int variable_Value = -1; // the value

    first_Minute_Digit = 0;
    second_Minute_Digit = 0;
    first_Hour_Digit = 0;
    second_Hour_Digit = 0;

    LCD_clear();
    LCD_putsc("set time");
    LCD_cursor(0, 1);
    LCD_putsc("__:__");
    LCD_cursor(push_Button, 1);
    LCD_cursor_on();
    while (1) {
        __delay_ms(100);

        // the up button
        if (RD0 == 1) {
            LCD_cursor_off();
            LCD_cursor(push_Button, 1);

            variable_Value++; // increment the variable value

            if (push_Button == 0) {
                if (variable_Value > 2)
                    variable_Value = 0;
                first_Hour_Digit = variable_Value;
                LCD_putch('0' + variable_Value);

            }
            if (push_Button == 1) {
                if (first_Hour_Digit == 2 && variable_Value > 3)
                    variable_Value = 0;
                else if (variable_Value > 9)
                    variable_Value = 0;
                second_Hour_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (push_Button == 3) {
                if (variable_Value > 5)
                    variable_Value = 0;
                first_Minute_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (push_Button == 4) {
                if (variable_Value > 9)
                    variable_Value = 0;
                second_Minute_Digit = variable_Value;
                LCD_putch('0' + variable_Value);


            }

        }
        //  use RD1 to move down the LCD cursor
        if (RD1 == 1) {
            LCD_cursor(push_Button, 1);
            LCD_cursor_off();
            variable_Value--;

            if (push_Button == 0) {
                if (variable_Value < 0)
                    variable_Value = 2;
                first_Hour_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (push_Button == 1) {
                if (first_Hour_Digit == 2 && variable_Value < 0)
                    variable_Value = 3;
                else if (variable_Value < 0)
                    variable_Value = 9;
                second_Hour_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (push_Button == 3) {
                if (variable_Value < 0)
                    variable_Value = 5;
                first_Minute_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (push_Button == 4) {
                if (variable_Value < 0)
                    variable_Value = 9;
                second_Minute_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
                LCD_cursor(push_Button, 1);
                LCD_cursor_on();
            }

        }
        if (RD2 == 1) {

            if (variable_Value>-1) {
                push_Button++;
                variable_Value = -1;
            }
            if (push_Button == 2)
                push_Button++;
            else if (push_Button >= 5)
                push_Button = 5;
            LCD_cursor(push_Button, 1);
            LCD_cursor_on();

        }
        // move back
        if (RD3 == 1) {

            if (variable_Value>-1) {
                push_Button--;
                variable_Value = -1;
            }
            if (push_Button == 2)
                push_Button--;
            else if (push_Button <= 0)
                push_Button = 0;
            LCD_cursor(push_Button, 1);
            LCD_cursor_on();

        }
        //initialise the time
        if (push_Button >= 5) {
            LCD_cursor_off();
            return (long) (first_Hour_Digit * 10 + second_Hour_Digit)
                    * 3600 + (first_Minute_Digit * 10 + second_Minute_Digit)*60;
        }

    }
}

