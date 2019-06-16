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

#define Vin A0  //input: battery voltage 
int voltage = 0;
int last = -1;
int Vin_max = 3.3;
int Vin_min = 0;
boolean flag = 1;      

AdafruitIO_Feed *analog = io.feed("analog"); //Set up the feed. Replace "analog" in this line with the name of the feed that you created

void setup() {
  //set pinMode
  pinMode(16,OUTPUT);  //pin D0, load resistance of 560ohm
  pinMode(5,OUTPUT);  //pin D1, load resistance of 330ohm
  pinMode(4,OUTPUT);  //pin D2, load resistance of 100ohm
  pinMode(13,OUTPUT); //pin D7, load resistance of 047ohm
  pinMode(15,OUTPUT); //pin D8, load is the Device Under Test (DUT)
  pinMode(0,INPUT_PULLUP);  //pin D3, to which the 'Flash' push button is connected.
  //make sure all loads are off initially
  digitalWrite(16,HIGH);
  digitalWrite(5,HIGH);
  digitalWrite(4,HIGH);
  digitalWrite(13,HIGH);
  digitalWrite(15,HIGH);
  
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
  digitalWrite(4,LOW);     //turn on the mosfet connecting 100ohm load
}

void loop() {

  // io.run(); is required for all sketches. It should always be present at the top of your loop function. It keeps the client connected to
  // io.adafruit.com, and processes any incoming data.
  io.run();
  if(flag)  {
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
  if(last < 2.1)  {   //if the battery voltage falls below the lower cut off
                      //turn OFF ALL loads when batteries got fully discharged.
      flag=0;         //clear the flag so that it does not oscillate when terminal voltage rises slightly.
      digitalWrite(16,HIGH);
      digitalWrite(5,HIGH);
      digitalWrite(4,HIGH);
      digitalWrite(0,HIGH);
      digitalWrite(15,HIGH); 
      Serial.println();
      Serial.println("Batteries got fully DISCHARGED...");
      Serial.println();
      while(1){
          delay(1000);  //do nothing    
       }
  }
}
