#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "displaySymbols.h"
#include <Fonts/FreeSerif9pt7b.h>

#define BUFF_SIZE 1000   //max size of the buffer
#define LOAD1 16        //load resistance of 564ohm
#define LOAD2 5        //load resistance of 232ohm
#define LOAD3 4       //load resistance of 116ohm
#define DUT   13       //load is the Device Under Test (DUT)
#define FLASH_BUTTON 0    //pin to which the 'Flash' push button is connected.
#define LED0 2            //define the inbuilt led pin
#define SW   0           //define the pin connected to the push button
#define SCL_PIN  14      //define pins for I2C communication
#define SDA_PIN  2
#define EN_VOLTAGE_DIVIDER 12 //the gate of a mosfet which enables the voltage divider for analog input.
#define Vin A0            //input: battery voltage 
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 32 // OLED display height, in pixels
const char LOADSTR1[]="464"; //define string containing load values
const char LOADSTR2[]="232";
const char LOADSTR3[]="116";
const char LOADSTR4[]="155";
const char LOADSTR5[]="093";
const char LOADSTR6[]="077";
const char LOADSTR7[]="066";
const boolean ON = 1;
const boolean OFF = 0;
const float VLowerCutOff = 2.1;  //define the lower cut off voltage or the end of discharge voltage for the battery
const int Vin_max = 3;           //maximum voltage that can be given as analog input
const int Vin_min = 0;           //minimum voltage that can be given as analog input
int selected = 0;                //to store the previously selected load
int front;                       //front index of queue (next empty location)
int rear;                        //rear index of queue  (first filled location)
int typeOfPress = 0;              //store whether long press or short press
float Queue[BUFF_SIZE];           //buffer stucture for storing the values if connection is lost

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire);    //define display object

void displayLoadVal(const char *str) {      //display the selected load      
  display.setFont(&FreeSerif9pt7b);
  display.clearDisplay();         //clear the display buffer
  display.setCursor(21,12);
  display.print("Select Load\n");
  display.setCursor(42,30);     //basically sets cursor to next line &center
  display.print(str);
  display.drawBitmap(72,19,ohm,ohm_width,ohm_height,1);    //display ohm symbol
  display.display();
  delay(100);
}

void displayWifiSymbol() {
  display.drawBitmap(114,0,wifi,wifi_width,wifi_height,1);
  display.display();
  delay(100);
}

void queueInit() {     //initialize pointers (queue is empty)
  front = 0;
  rear = 0;
}

void enqueue(float V) {   //write a value to the buffer
  if( front == (BUFF_SIZE - 1) )    //if queue is full
    front = 0;                      //store again in first position (circular behavior)
  Queue[front] = V;                  
  front++;                          //increment to point to next empty location
}

float dequeue() {     //read value from the buffer
  float val;
  if( (rear == ( front - 1 )) || (rear == (BUFF_SIZE - 1)) ) {  //queue has only one value
    val = Queue[rear];   //store value in a temporay variable
    queueInit();         //re-initialize 
  }
  else {
    val = Queue[rear];
    rear++;         //increment rear to point to next filled location
    if ( rear == BUFF_SIZE )
      rear = 0;   //if overflows set it back to 0 (circular behavior)
  }
  return val;
}

void turnOffAllLoad() {     //turns off all the loads
  digitalWrite(LOAD1,HIGH);
  digitalWrite(LOAD2,HIGH);
  digitalWrite(LOAD3,HIGH);
  digitalWrite(DUT,HIGH);
}

float readVoltage() {  //reads voltage at Vin by enabling the voltage divider
  int v;
  digitalWrite(EN_VOLTAGE_DIVIDER, HIGH);
  v=analogRead(Vin);
  digitalWrite(EN_VOLTAGE_DIVIDER, LOW);
  return ((float(Vin_max - Vin_min)*v)/1024);
}

int buttonPressed() {     //function to detect if the button is pressed / not pressed / long pressed 
  long int EndTime0, StartTime0;
  StartTime0 = millis();
  if(!digitalRead(SW)) {       //if button is pressed it gives 'LOW' on the pin
    delay(10);                //debounce
    if(!digitalRead(SW)) {     //verify again
        while(!digitalRead(SW)) {    //keep looping until the button is released
          delay(0);                //avoid rebooting of the MCU
        }
        EndTime0 = millis();
        if((EndTime0 - StartTime0) >= 1950 )
          return 2;         //2 means long press (about 2 sec.)
        else
          return 1;         //1 means short press
    }
    else return 0;          //0 means button is not pressed
  }
  else return 0;            //0 means button is not pressed
}

void blinky(int led_pin, int number) {          //function to make an led blink
  for ( ; number > 0; number--) {
    digitalWrite(led_pin,LOW);      //LED ON (all are active low LEDs)
    delay(300);
    digitalWrite(led_pin,HIGH);     //LED OFF
    delay(200);
  }
  return;
}

void attachLoad(int x) {      //function to attach the load on long press
  switch (x) {
    case 1:  {  //turn on ONE load at a time
                digitalWrite(LOAD1,LOW); 
                digitalWrite(LOAD2,HIGH); 
                digitalWrite(LOAD3,HIGH); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 2:  {  //turn on ONE load at a time
                digitalWrite(LOAD1,HIGH); 
                digitalWrite(LOAD2,LOW); 
                digitalWrite(LOAD3,HIGH); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 3:  {  //turn on ONE load at a time
                digitalWrite(LOAD1,HIGH); 
                digitalWrite(LOAD2,HIGH); 
                digitalWrite(LOAD3,LOW); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 4:  {  //turn on ONE load at a time
                digitalWrite(LOAD1,LOW); 
                digitalWrite(LOAD2,LOW); 
                digitalWrite(LOAD3,HIGH); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 5:  {  //turn on ONE load at a time
                digitalWrite(LOAD1,LOW); 
                digitalWrite(LOAD2,HIGH); 
                digitalWrite(LOAD3,LOW); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 6:  {  //turn on ONE load at a time
                digitalWrite(LOAD1,HIGH); 
                digitalWrite(LOAD2,LOW); 
                digitalWrite(LOAD3,LOW); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 7:  {  //turn on ONE load at a time
                digitalWrite(LOAD1,LOW); 
                digitalWrite(LOAD2,LOW); 
                digitalWrite(LOAD3,LOW); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 8:  {  //turn on ONE load at a time
                digitalWrite(LOAD1,HIGH); 
                digitalWrite(LOAD2,HIGH); 
                digitalWrite(LOAD3,HIGH); 
                digitalWrite(DUT,LOW); 
                break ; 
              }
    default: {  //turn OFF ALL loads
                digitalWrite(LOAD1,HIGH); 
                digitalWrite(LOAD2,HIGH); 
                digitalWrite(LOAD3,HIGH); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
  }   //end of switch
  return;
}

void led(int led_pin, boolean y) {    //function to turn on or off LED
  digitalWrite(led_pin,!y);           //active low LEDs
  return;
}

void loadSelect() {    //gets input from the user and attaches the load
  while(1) {
  while((digitalRead(SW)) && (selected <= 0)) {
    delay(0);      //stops resetting the MCU
  }
  typeOfPress = buttonPressed();
  if ( typeOfPress == 1 ) {    //if short press detected
    selected++; 
    if(selected == 9) 
      selected=1;     //roll over condition
    switch (selected) {   //turn ON specific LED(s) 
      case 1: { displayLoadVal(LOADSTR1); } break;
      case 2: { displayLoadVal(LOADSTR2); } break;
      case 3: { displayLoadVal(LOADSTR3); } break;
      case 4: { displayLoadVal(LOADSTR4); } break;
      case 5: { displayLoadVal(LOADSTR5); } break;
      case 6: { displayLoadVal(LOADSTR6); } break;
      case 7: { displayLoadVal(LOADSTR7); } break;
      case 8: { display.setFont(&FreeSerif9pt7b);
                display.clearDisplay();         //clear the display buffer
                display.setCursor(21,12);
                display.print("Select Load\n");
                display.setCursor(48,30);     //basically sets cursor to next line &center
                display.print("DUT");
                display.display();
                delay(100);
              } break;
      default:  {  } break;
    }
  }
  if( typeOfPress == 2 ) { //if long press detected (no need to check the validity of 'selected', that's taken care by the switch statement)
       attachLoad(selected);            //attach the load
       break;                  //break from the while(1)
  }
  delay(0);   // avoid rebooting of the MCU
 }
 return;
}
