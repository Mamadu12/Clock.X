// Filename: ADClib.c
// Version: 1.0
// Author: <Mamadu balde>
// Purpose : Provides functions to easily use ACD to monitor Matrix
// : Multimedia sensor boards
#include <xc.h>
#define _XTAL_FREQ 3276800 // Required for the __delay_us and __delay_ms macros

/* ADC_Config Configures the ADCON1 register for Fosc/8 and enables the ADC
* function once before prior to using any of the LCD display functions
* contained in this library. */
void ADC_initialise(void)
{
TRISA = 0x03; // Assign AN0 (RA0) and AN1 (RA1) as input
ADCON1bits.ADCS2 = 0; // select ADC conversion clock select as Fosc/8
ADCON0bits.ADCS=0x01; // this provides the required minimum conversion time
// with a 3.2768 MHz clock
ADCON1bits.ADFM=0x01; // Set results to right justified
ADCON1bits.PCFG=0x00; // Assign all ADC inputs as analogue
ADCON0bits.ADON = 1; // Turn ADC On
}
/* ADC_Read reads the current analogue reading channel selected. It starts the
* conversion by setting the Go/Done bit. Conversion is complete when the bit
* is cleared by the MCU so a polling loop is set up detect this. After
* conversion the ADRESH and ADCRESL are combined to provide a 10 bit result.
*/
unsigned int ADC_read(void)
{
unsigned int result;
__delay_us(20); // Wait for acquisition time (worst case 20 us)
ADCON0bits.GO = 1; // Set GO Bit to start conversion
while(ADCON0bits.GO==1); // Wait for GO bit to clear (conversion complete)
result =(ADRESH<<8)+ADRESL; // Combine to produce final 10 bit result
return(result);
}
/* ADC_channel_select() selects the current channel for conversion.
* On the E?block sensor board:
* Channel 0 (AN0) is connected to the LDR.
* Channel 1 (AN1) is connected to the potentiometer.
*/
void ADC_channel_select(unsigned char channel)
{
ADCON0bits.CHS=channel; // This selects which analogue input
// to use for the ADC conversion
}