/*
 * File:   alarmSettings.c
 * Author: Mamadu Balde
 *
 * Created on 22 April 2017, 11:24
 */
#include <xc.h>
#include "ADClib.h"
#include "LCDdrive.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

/*
 * *********************************************************
 * ************** DOWN BUTTON ******************************
 *  ************* DOWN BUTTON *****************************
 * *********************************************************
 */
long setAlarm(void) {
    // push Button is represented by pushB
    unsigned char first_Minute_Digit; // first digit for the minutes
    unsigned char second_Minute_Digit; // second digit for the minutes
    unsigned char first_Hour_Digit; // hours first digit
    unsigned char second_Hour_Digit; // hours second digit
    int pushbutton = 0; // push Button compined with RD0 and RD1
    int variable_Value = -1; // the value

    // set all the digit to 0
    first_Minute_Digit = 0;
    second_Minute_Digit = 0;
    first_Hour_Digit = 0;
    second_Hour_Digit = 0;

    LCD_clear();
    LCD_putsc("set alarm"); // the string to be displayed when setting the alarm
    LCD_cursor(0, 1);
    LCD_putsc("__:__");
    LCD_cursor(pushbutton, 1);
    LCD_cursor_on();
    while (1) {
        __delay_ms(220);
        /*
         * *********************************************************
         * ************** UP BUTTON ******************************
         * *********************************************************
         */
        if (RD0 == 1) {
            LCD_cursor_off();
            LCD_cursor(pushbutton, 1);

            variable_Value++;

            if (pushbutton == 0) {
                if (variable_Value > 2)
                    variable_Value = 0;
                first_Hour_Digit = variable_Value;
                LCD_putch('0' + variable_Value);

            }
            if (pushbutton == 1) {
                if (first_Hour_Digit == 2 && variable_Value > 3)
                    variable_Value = 0;
                else if (variable_Value > 9)
                    variable_Value = 0;
                second_Hour_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (pushbutton == 3) {
                if (variable_Value > 5)
                    variable_Value = 0;
                first_Minute_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (pushbutton == 4) {
                if (variable_Value > 9)
                    variable_Value = 0;
                second_Minute_Digit = variable_Value;
                LCD_putch('0' + variable_Value);


            }

        }
        /*
         * *********************************************************
         * ************** DOWN BUTTON ******************************
         * *********************************************************
         */
        // down button
        if (RD1 == 1) {
            LCD_cursor(pushbutton, 1);
            LCD_cursor_off();
            variable_Value--;

            if (pushbutton == 0) {
                if (variable_Value < 0)
                    variable_Value = 2;
                first_Hour_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (pushbutton == 1) {
                if (first_Hour_Digit == 2 && variable_Value < 0)
                    variable_Value = 3;
                else if (variable_Value < 0)
                    variable_Value = 9;
                second_Hour_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (pushbutton == 3) {
                if (variable_Value < 0)
                    variable_Value = 5;
                first_Minute_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
            }
            if (pushbutton == 4) {
                if (variable_Value < 0)
                    variable_Value = 9;
                second_Minute_Digit = variable_Value;
                LCD_putch('0' + variable_Value);
                LCD_cursor(pushbutton, 1);
                LCD_cursor_on();
            }

        }
        /*
         * *********************************************************
         * ************** MOVE CURSOR BUTTON ***********************
         * *********************************************************
         */
        // move cursor to select
        if (RD2 == 1) {

            if (variable_Value>-1) {
                pushbutton++;
                variable_Value = -1;
            }
            if (pushbutton == 2)
                pushbutton++;
            else if (pushbutton >= 5)
                pushbutton = 5;
            LCD_cursor(pushbutton, 1);
            LCD_cursor_on();

        }
        /*
         * *********************************************************
         * ************** RETURN or BACK BUTTON ********************
         * *********************************************************
         */
        if (RD3 == 1) {
            pushbutton--; // decrement value

            if (pushbutton == 2)
                pushbutton--;
            else if (pushbutton <= 0)
                pushbutton = 0;
            LCD_cursor(pushbutton, 1);
            LCD_cursor_on();

        }
        if (pushbutton >= 5) {
            LCD_cursor_off();
            return (long) (first_Hour_Digit * 10 + second_Hour_Digit)
                    *3600 + (first_Minute_Digit * 10 + second_Minute_Digit)*60;
        }

    }
}
