/*
 * File:   config.c
 * Author: Mamadu Balde
 *
 * Created on 20 April 2017, 01:06
 */
#include <xc.h>
#include "ADClib.h"
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros


/*
 * *********************************************************
 * ****** Set all PORTB as output (for LCD)****************
 *  Set RD0:2 as input for menu control *******************
 * *********************************************************
 */
void config(void) {
    LCD_initialise();
    ADC_initialise();

    // configuration systems options available for the user
    // array of options
    configuration_Options[0] = "set time"; // index 0 value 1
    configuration_Options[1] = "set alarm"; // index 1 value 2
    configuration_Options[2] = "temp mode"; // index 2 value 3

    // temperature units available for the user
    // array of options
    temperatureMenu[0] = "Centigrade";
    temperatureMenu[1] = "Fahrenheit";

    // storage memory for the time reader
    OPTION_REG = 0x84; // //Timer0 Registers Prescaler = 32
    TMR0 = 0;
    INTCON = 0xA8; //  PORTB and TMR0  interrupt configuration

    TRISD = 0X3F; //Set PORTD 0 to 5 as input and 6 & 7 as output
    TRISA = 0X03; //Set PORTA 0 & 1 as  input

    TRISB = 0x80; //Set PORTB as input
    alarmTime = 28800; // the alarm time is set to 8 o'clock 
    // 86400/3 28800 
    // 24h / 3 = 8 hours 
    // alarm default time = 8 o'clock
    // 86400 total number of seconds per day = 24h
    // 28800 seconds = 8 hours
    time = 0; // time assigned to be 0
    RD6 = 0; // the alarm enable status
    RD7 = 0; // alarm buzzer status
}

