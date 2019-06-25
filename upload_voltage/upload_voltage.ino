// Adafruit IO Analog In Example
//
// Copyright (c) 2016 Adafruit Industries
// Licensed under the MIT license.
//
// All text above must be included in any redistribution.
/************************** Configuration ***********************************/
// edit the config.h tab and enter your Adafruit IO credentials
// and any additional configuration needed for WiFi, cellular,
// or ethernet clients.
/****************************************************************************/

#include "config.h"
#include "DischargeBattery.h"

float Vbat = 0, saved = 0;
float last = -1;
boolean ONCE_DISCHARGED = 0;      
long int CurTime, StartTime, EndTime;

AdafruitIO_Feed *analog = io.feed("analog"); //Set up the feed. Replace "analog" in this line with the name of the feed that you created

void setup() {
  //set pinMode
  pinMode(LOAD1,OUTPUT);  //load resistance of 564ohm
  pinMode(LOAD2,OUTPUT);  //load resistance of 232ohm
  pinMode(LOAD3,OUTPUT);  //load resistance of 116ohm
  pinMode(DUT,OUTPUT);       //load is the Device Under Test (DUT)
  pinMode(FLASH_BUTTON,INPUT_PULLUP);  //pin D3, to which the 'Flash' push button is connected.
  pinMode(SW,INPUT_PULLUP);         //push button (active high input)
  pinMode(EN_VOLTAGE_DIVIDER,OUTPUT);  //pin D6, gate of the mosfet which enables the voltage divider
  pinMode(LED0,OUTPUT);       //set the inbuilt LED0 pin as Output
  pinMode(scl,OUTPUT);
  pinMode(sda,OUTPUT);
  pinMode(Vin,INPUT);
  
  turnOffAllLoad();   //make sure all loads are off initially
  led(LED0, ON);        //turn on LED so that we get to know when it is ready to take inputs
  io.connect();   // connect to io.adafruit.com
  
  // wait for a connection
  while(io.status() < AIO_CONNECTED) {
    delay(500);
  }
  blinky(LED0,5);   // we are connected. Turn off all LEDs
  led(LED0, OFF); led(scl,OFF); led(sda,OFF);
  loadSelect();   //let the user select load / DUT
  queueInit();
}

void loop() {
  StartTime = millis();
  // io.run(); is required for all sketches. It should always be present at the top of your loop function. It keeps the client connected to
  // io.adafruit.com, and processes any incoming data.
  io.run();
  if( !ONCE_DISCHARGED )  
    Vbat = readVoltage();
  if( !(Vbat < VLowerCutOff) )
    enqueue(Vbat);    //enqueue the values
  if(!(io.status() < AIO_CONNECTED)) {
    saved = dequeue();  //read value from the queue
    analog->save(saved); // save the value to the feed
  } 
  if(Vbat < VLowerCutOff)  {   //if the battery Vbat falls below the lower cut off
      ONCE_DISCHARGED = 1;         //clear the ONCE_DISCHARGED so that it does not oscillate when terminal Vbat rises slightly.
      turnOffAllLoad();    //turn OFF ALL loads when batteries got fully discharged.
   
      while(1){
        if( !(io.status() < AIO_CONNECTED) && (rear != 0) && (front != 0) ) {   //connected but queue is not empty
          saved = dequeue();          //read value from the queue
          analog->save(Vbat);         // save the value to the feed
          led(LED0, ON);              //indicate using LED0
        }
        else {
          led(LED0, OFF);
          delay(0);                //do nothing  
        }
     }
  }

  CurTime = millis();
  //delay(2000 - (StartTime - CurTime));
  delay(1700);
}
