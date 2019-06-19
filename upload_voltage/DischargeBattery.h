#define LOAD_560 16       //pin D0, load resistance of 560ohm
#define LOAD_232 5        //pin D1, load resistance of 232ohm
#define LOAD_116 4        //pin D2, load resistance of 116ohm
#define LOAD_047 13       //pin D7, load resistance of 047ohm
#define DUT      15       //pin D8, load is the Device Under Test (DUT)
#define FLASH_BUTTON 0    //pin D3, to which the 'Flash' push button is connected.
#define LED_BUILTIN 2     //define the inbuilt led pin
#define EN_VOLTAGE_DIVIDER 12 //pin D6 which drives the gate of a mosfet which enables the voltage divider for analog input.
#define Vin A0  //input: battery voltage 
const float VLowerCutOff = 2.1;  //define the lower cut off voltage or the end of discharge voltage for the battery
const int Vin_max = 3;           //maximum voltage that can be given as analog input
const int Vin_min = 0;           //minimum voltage that can be given as analog input
int selected = 0;                //to store the previously selected load

void turnOffAll() {     //turns off all the loads
  digitalWrite(LOAD_560,HIGH);
  digitalWrite(LOAD_232,HIGH);
  digitalWrite(LOAD_116,HIGH);
  digitalWrite(LOAD_047,HIGH);
  digitalWrite(DUT,HIGH);
}

float readVoltage() {  //reads voltage at Vin by enabling the voltage divider
  int v;
  digitalWrite(EN_VOLTAGE_DIVIDER, HIGH);
  v=analogRead(Vin);
  digitalWrite(EN_VOLTAGE_DIVIDER, LOW);
  return ((float(Vin_max - Vin_min)*v)/1024);
}

void loadSelect() {    //gets input from the user and attaches the load
  while(1) {
  while((! buttonPressed()) && (selected <= 0)) {
    led(0);         //turn off led
    delay(10);      //wait for some time (stops resetting the MCU)
  }
  if (buttonPressed()) {
    selected++; 
    if(selected==6) selected=1;     //if overflows, circularly change it!
    blinky(selected);               //flash the led the number of times 'selected'
    if(!digitalRead(FLASH_BUTTON)) {    //if still button is held pressed i.e. long press
       attachLoad(selected);            //attach the load
       break;                   //break from the while(1)
    }
  }
  delay(10);
 }
}

boolean buttonPressed() {     //function to detect if the button is pressed
  if(!digitalRead(FLASH_BUTTON)) {       //if button is pressed it gives '0' on the pin
    delay(10);                //debounce
    if( ! digitalRead(FLASH_BUTTON))     //verify again
        return 1;
    else return 0;
  }
  else return 0;
}

void blinky(int a) {          //function to make the led blink
  for ( ; a>0;a--) {
    digitalWrite(LED,LOW);      //LED ON (active low LED)
    delay(300);
    digitalWrite(LED,HIGH);     //LED OFF
    delay(200);
  }
  return;
}

void attachLoad(int x) {      //function to attach the load on long press
  switch (x) {
    case 1:  {  //turn on ONE load at a time
                digitalWrite(LOAD_560,LOW); 
                digitalWrite(LOAD_232,HIGH); 
                digitalWrite(LOAD_116,HIGH); 
                digitalWrite(LOAD_047,HIGH); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 2:  {  //turn on ONE load at a time
                digitalWrite(LOAD_560,HIGH); 
                digitalWrite(LOAD_232,LOW); 
                digitalWrite(LOAD_116,HIGH); 
                digitalWrite(LOAD_047,HIGH); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 3:  {  //turn on ONE load at a time
                digitalWrite(LOAD_560,HIGH); 
                digitalWrite(LOAD_232,HIGH); 
                digitalWrite(LOAD_116,LOW); 
                digitalWrite(LOAD_047,HIGH); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 4:  {  //turn on ONE load at a time
                digitalWrite(LOAD_560,HIGH); 
                digitalWrite(LOAD_232,HIGH); 
                digitalWrite(LOAD_116,HIGH); 
                digitalWrite(LOAD_047,LOW); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
    case 5:  {  //turn on ONE load at a time
                digitalWrite(LOAD_560,HIGH); 
                digitalWrite(LOAD_232,HIGH); 
                digitalWrite(LOAD_116,HIGH); 
                digitalWrite(LOAD_047,HIGH); 
                digitalWrite(DUT,LOW); 
                break ; 
              }
    default: {  //turn OFF ALL loads
                digitalWrite(LOAD_560,HIGH); 
                digitalWrite(LOAD_232,HIGH); 
                digitalWrite(LOAD_116,HIGH); 
                digitalWrite(LOAD_047,HIGH); 
                digitalWrite(DUT,HIGH); 
                break ; 
              }
  }   //end of switch
  return;
}

void led(boolean y) {    //function to turn on or off LED
  digitalWrite(LED,~y);
  return;
}
