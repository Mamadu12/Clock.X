/*
 * Version:1.0
 * File:   mainDigitalClock.c
 * Author: Mamadu Balde
 *
 * Purpose: Implements a simple multilevel menu system. Uses the following
 * controls: RD0 = UP, RD1 = DOWN, RD2 = SELECT
 * Created on 01 April 2017, 17:23
 */

#include <xc.h>
#include "LCDdrive.h"
#include "ADClib.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

void main(void) {
    config(); // function for the configuration/ settings
    int i = 0;

    while (1) { // endless loop

        LCD_cursor(0, 0); // set cursor to the initial position
        LCD_putsc("time: "); // display the string

        // for loop to set the alarm
        for (i = 0; i < 5; i++) {
            LCD_cursor(6, 0); // first line position 6
            updateTimeDisplayed(time); // set and update the time
            LCD_cursor(0, 1);
            LCD_putsc("alarm: "); // display string
            LCD_cursor(6, 1); // second line, position 6
            updateSetAlarm(alarmTime); // the alarm is updated once its set
            LCD_putsc("     "); // display empty string
            TMR1Delay(1);
            time++; // increment the time
            if (time == 86400) { // 86400 is the total number of seconds per day
                //86400/24  = 3600/60 = 60 s = 1 hour
                time = 0;
            }
            // if statement for the configuration of the 3 available choices from the menu
            if (RD2 == 1) {
                while (selectMode != 3) { // if the select mode is none of the 3 available options
                    //then perform the following
                    selectMode = screenConfigurationMode(); // the options will be displayed
                    if (selectMode == 0) { // in case if the selected option is 1 from the index 0
                        time = setTimeDisplayer(); // the set time will be available

                    } else if (selectMode == 1) { // if the selected option is 2 from the index 1
                        alarmTime = setAlarm(); // the set alarm option will be available
                    } else if (selectMode == 2) { // if its 3 from index 2
                        temperature = setTemperatureUnit(); // the set temperature option will be available
                    }

                }
                selectMode = 0;
                LCD_clear();
                LCD_cursor(0, 0);
                LCD_putsc("time: ");
            }
            // if the set alarm is equal to the current time
            if (alarmTime == time) {
                alarmActivator = 1; // the alarm is activated

            }
            if (RD4 == 1 && alarmActivator == 1) { // if the snooze is 1 and the alarm time is 1
                RD7 = 0; // toggle the alarm
                alarmActivator = 0;
                snoozeActivator = 1;
                buzzer = 0;
            }
            if (snoozeActivator == 1) {
                buzzer++;
            }
            if (buzzer == 5) {
                alarmActivator = 1;
                snoozeActivator = 0;
            }

        }
        // for loop for the Humidity reader
        for (i = 0; i < 5; i++) {
            LCD_cursor(6, 0);
            updateTimeDisplayed(time); // the time is updated and displayed
            LCD_cursor(0, 1);
            LCD_putsc("RH:   ");
            LCD_cursor(6, 1);
            humidityReader();
            TMR1Delay(1);
            time++;
            if (time == 86400) { // 86400 is the total number of seconds per day
                //86400/24  = 3600/60 = 60 s = 1 hour
                time = 0;
            }
            if (RD2 == 1) { // set the select and set button
                while (selectMode != 3) {
                    selectMode = screenConfigurationMode();
                    if (selectMode == 0) {
                        time = setTimeDisplayer();

                    } else if (selectMode == 1) {
                        alarmTime = setAlarm();
                    } else if (selectMode == 2) {
                        temperature = setTemperatureUnit();
                    }

                }
                selectMode = 0;
                LCD_clear();
                LCD_cursor(0, 0); // put  cursor on (0,0) position
                LCD_putsc("time : "); // the time is displayed in all screens
            }
            if (alarmTime == time) {
                alarmActivator = 1;

            }
            if (RD4 == 1 && alarmActivator == 1) {
                RD7 = 0;
                alarmActivator = 0;
                snoozeActivator = 1;
                buzzer = 0;
            }
            if (snoozeActivator == 1) {
                buzzer++;
            }
            if (buzzer == 5) {
                alarmActivator = 1;
                snoozeActivator = 0;
            }

        }
        for (i = 0; i < 5; i++) {
            LCD_cursor(6, 0);
            updateTimeDisplayed(time); // update the current time
            LCD_cursor(0, 1);
            LCD_putsc("temp : "); // temperature screen string
            LCD_cursor(5, 1);
            temperatureReader();
            TMR1Delay(1);
            time++;
            if (time == 86400) { // 86400 is the total number of seconds per day
                //86400/24  = 3600/60 = 60 s = 1 hour
                time = 0;
            }
            if (RD2 == 1) {
                while (selectMode != 3) {
                    selectMode = screenConfigurationMode();
                    if (selectMode == 0) {
                        time = setTimeDisplayer();

                    } else if (selectMode == 1) {
                        alarmTime = setAlarm();
                    } else if (selectMode == 2) {
                        temperature = setTemperatureUnit();
                    }

                }
                selectMode = 0;
                LCD_clear();
                LCD_cursor(0, 0);
                LCD_putsc("time : ");
            }
            if (alarmTime == time) {
                alarmActivator = 1;

            }
            // set the snooze button
            if (RD4 == 1 && alarmActivator == 1) {
                RD7 = 0;
                alarmActivator = 0;
                snoozeActivator = 1;
                buzzer = 0;
            }
            if (snoozeActivator == 1) { // enabled
                buzzer++; // increment the value of buzzer
            }
            if (buzzer == 5) {

                alarmActivator = 1;
                snoozeActivator = 0;
            }
        }
    }
}
