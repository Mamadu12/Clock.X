// Filename: ADClib.c
// Version: 1.0
// Author: <Mamadu Balde>

//Function Prototypes

void ADC_initialise(void); // function to initialise the ADC
unsigned int ADC_read(void); // function to initialise the ADC reader
void ADC_channel_select(unsigned char channel); 
void TMR1Delay(unsigned char delay);

unsigned int screenConfigurationMode(void); // function to select the available options in the screen
long setTimeDisplayer(void); // function to set the time to be displayed
long setAlarm(void); // function to set the alarm 
char setTemperatureUnit(void); //function to set the temperature unit
void updateTimeDisplayed(long elapsed_time); // function to update the time displayed
void updateSetAlarm(long elapsed_time); // function to update the alarm set

void temperatureReader(void); // function for the temperature reader
void humidityReader(void); // function for the humidity reader

void config(void); // function for the configuration/ settings
void interrupt MyISR(void); // function for the interrupt

// define items available for the temperature
// * (pointer) to access the variable within the scope of the class
const char *temperatureMenu[2]; 
// define items available for the user to select...set time, temperature and alarm
// the number 3 represents the number of 
// items in the array that will be used or available for the user
// * (pointer) to access the variable within the scope of the class
const char *configuration_Options[3];


unsigned char snoozeActivator; // enable the snooze
unsigned char alarmActivator; // activate the alarm
unsigned char timeRepeated; // times repeated
unsigned char overflowInt;  // overflow interrupt
unsigned char selectMode;  // option to navigate in the screen option
unsigned char buzzer;     // buzzer for the alarm

long alarmTime; // the time the alarm has been set for 
long time; // the current time itself
char temperature = 'C'; // temperature description "C" or "F"

