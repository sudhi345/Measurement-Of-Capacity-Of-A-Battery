#define BUFF_SIZE 1000   //max size of the buffer
#define LOAD1 16        //load resistance of 564ohm
#define LOAD2 5        //load resistance of 232ohm
#define LOAD3 4       //load resistance of 116ohm
#define DUT   13       //load is the Device Under Test (DUT)
#define FLASH_BUTTON 0    //pin to which the 'Flash' push button is connected.
#define LED0 2            //define the inbuilt led pin
#define SW   0           //define the pin connected to the push button
#define scl  14
#define sda  2
#define EN_VOLTAGE_DIVIDER 12 //pin D6 which drives the gate of a mosfet which enables the voltage divider for analog input.
#define Vin A0            //input: battery voltage 
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
    led(LED0,OFF);  //turn off led
    delay(0);      //stops resetting the MCU
  }
  typeOfPress = buttonPressed();
  if ( typeOfPress == 1 ) {    //if short press detected
    selected++; 
    if(selected == 5) 
      selected=1;     //roll over condition
    switch (selected) {   //turn ON specific LED(s) 
      case 1: { led(scl,OFF); led(sda,OFF); } break;
      case 2: { led(scl,OFF); led(sda,ON); } break;
      case 3: { led(scl,ON); led(sda,OFF); } break;
      case 4: { led(scl,ON); led(sda,ON); } break;
      default:  { led(scl,OFF); led(sda,OFF); } break;
    }
  }
  if( typeOfPress == 2 ) { //if long press detected (no need to check the validity of 'selected', that's taken care by the switch statement)
       led(scl,OFF); led(sda,OFF);
       attachLoad(selected);            //attach the load
       break;                  //break from the while(1)
  }
  delay(0);   // avoid rebooting of the MCU
 }
 return;
}
