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

float Vbat = 0;
float last = -1;
boolean ONCE_DISCHARGED = 0;      

AdafruitIO_Feed *analog = io.feed("analog"); //Set up the feed. Replace "analog" in this line with the name of the feed that you created

void setup() {
  //set pinMode
  pinMode(LOAD_560,OUTPUT);  //pin D0, load resistance of 560ohm
  pinMode(LOAD_232,OUTPUT);  //pin D1, load resistance of 232ohm
  pinMode(LOAD_116,OUTPUT);  //pin D2, load resistance of 116ohm
  pinMode(LOAD_047,OUTPUT);  //pin D7, load resistance of 047ohm
  pinMode(DUT,OUTPUT);       //pin D8, load is the Device Under Test (DUT)
  pinMode(FLASH_BUTTON,INPUT_PULLUP);  //pin D3, to which the 'Flash' push button is connected.
  pinMode(EN_VOLTAGE_DIVIDER,OUTPUT);       //pin D6, gate of the mosfet
  
  turnOffAll();   //make sure all loads are off initially
  
  Serial.begin(115200);    //begin serial communication

  while(! Serial);  // wait for serial monitor to open

  // connect to io.adafruit.com
  Serial.print("Connecting to Adafruit IO");
  io.connect();

  // wait for a connection
  while(io.status() < AIO_CONNECTED) {
    Serial.print(".");
    delay(500);
  }

  // we are connected
  Serial.println();
  Serial.println(io.statusText());
  Serial.println();
  loadSelect();
}

void loop() {

  // io.run(); is required for all sketches. It should always be present at the top of your loop function. It keeps the client connected to
  // io.adafruit.com, and processes any incoming data.
  io.run();
  if(! ONCE_DISCHARGED)  {
  Vbat = readVoltage();
  if(Vbat == last)
    return;     // return if the value hasn't changed

  Serial.print("sending -> Vbat= ");
  Serial.print(Vbat);
  Serial.println(" V");
  analog->save(Vbat); // save the current state to the analog feed
  last = Vbat; // store last read Vbat
  delay(2000);  // wait two seconds
}

  if(last < VLowerCutOff)  {   //if the battery Vbat falls below the lower cut off
      ONCE_DISCHARGED = 1;         //clear the ONCE_DISCHARGED so that it does not oscillate when terminal Vbat rises slightly.
      turnOffAll();    //turn OFF ALL loads when batteries got fully discharged.
      Serial.println();
      Serial.println("Batteries got fully DISCHARGED...");
      Serial.println();
      while(1){
          delay(1000);  //do nothing    
       }
  }
}
