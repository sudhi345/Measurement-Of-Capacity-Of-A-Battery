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

#define Vin A0  //input: battery voltage 
const float VLowerCutOff = 2.1;  //define the lower cut off voltage or the end of discharge voltage for the battery
int voltage = 0;
int last = -1;
int Vin_max = 3.3;
int Vin_min = 0;
boolean ONCE_DISCHARGED = 0;      

AdafruitIO_Feed *analog = io.feed("analog"); //Set up the feed. Replace "analog" in this line with the name of the feed that you created

void setup() {
  //set pinMode
  pinMode(LOAD_560,OUTPUT);  //pin D0, load resistance of 560ohm
  pinMode(LOAD_232,OUTPUT);  //pin D1, load resistance of 232ohm
  pinMode(LOAD_116,OUTPUT);  //pin D2, load resistance of 116ohm
  pinMode(LOAD_047,OUTPUT); //pin D7, load resistance of 047ohm
  pinMode(DUT,OUTPUT); //pin D8, load is the Device Under Test (DUT)
  pinMode(FLASH_BUTTON,INPUT_PULLUP);  //pin D3, to which the 'Flash' push button is connected.
  //make sure all loads are off initially
  digitalWrite(LOAD_560,HIGH);
  digitalWrite(LOAD_232,HIGH);
  digitalWrite(LOAD_116,HIGH);
  digitalWrite(LOAD_047,HIGH);
  digitalWrite(DUT,HIGH);
  
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
  digitalWrite(LOAD_116,LOW);     //turn on the mosfet connecting 100ohm load
}

void loop() {

  // io.run(); is required for all sketches. It should always be present at the top of your loop function. It keeps the client connected to
  // io.adafruit.com, and processes any incoming data.
  io.run();
  if(! ONCE_DISCHARGED)  {
  voltage = analogRead(Vin);  // grab the voltage of the battery
  float Vbat = float((Vin_max - Vin_min))*voltage/1024;

  
  if(voltage == last)
    return;     // return if the value hasn't changed

  Serial.print("sending -> Vbat= ");
  Serial.print(Vbat);
  Serial.println(" V");
  analog->save(Vbat); // save the current state to the analog feed
  last = voltage; // store last read voltage
  delay(2000);  // wait two seconds
}
  if(last < VLowerCutOff)  {   //if the battery voltage falls below the lower cut off
                      //turn OFF ALL loads when batteries got fully discharged.
      ONCE_DISCHARGED = 1;         //clear the ONCE_DISCHARGED so that it does not oscillate when terminal voltage rises slightly.
      digitalWrite(LOAD_560,HIGH);
      digitalWrite(LOAD_232,HIGH);
      digitalWrite(LOAD_116,HIGH);
      digitalWrite(LOAD_047,HIGH);
      digitalWrite(DUT,HIGH); 
      Serial.println();
      Serial.println("Batteries got fully DISCHARGED...");
      Serial.println();
      while(1){
          delay(1000);  //do nothing    
       }
  }
}
