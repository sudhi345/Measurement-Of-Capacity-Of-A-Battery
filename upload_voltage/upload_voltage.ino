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

#include "config.h"

/************************ Example Starts Here *******************************/

#define Pot_Pin A0
// Potentiometer state
int voltage = 0;
int last = -1;
int Vout_max = 3.3;
int Vout_min = 0;
// set up the 'analog' feed
AdafruitIO_Feed *analog = io.feed("analog"); //Replace "analog" in this line with the name of the feed that you created

void setup() {
pinMode(0,OUTPUT);
pinMode(4,OUTPUT);
pinMode(5,OUTPUT);
pinMode(16,OUTPUT);
pinMode(15,OUTPUT);
  digitalWrite(16,HIGH);
  digitalWrite(5,HIGH);
  digitalWrite(4,HIGH);
  digitalWrite(0,HIGH);
  digitalWrite(15,HIGH);
  Serial.begin(115200);

  // wait for serial monitor to open
  while(! Serial);

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
  
  digitalWrite(4,LOW);     //turn on the mosfet connecting 100ohm load
}

void loop() {

  // io.run(); is required for all sketches.
  // it should always be present at the top of your loop function.
  //It keeps the client connected to
  // io.adafruit.com, and processes any incoming data.
  io.run();

  // grab the voltage across the potentiometer
  voltage = analogRead(Pot_Pin);
  float V_pot = float((Vout_max - Vout_min))*voltage/1023;

  // return if the value hasn't changed
  if(voltage == last)
    return;

  // save the current state to the analog feed
  Serial.print("sending -> V_pot= ");
  Serial.print(V_pot);
  Serial.println(" V");
  analog->save(V_pot);

  // store last photocell state
  last = voltage;

  // wait two seconds (1000 milliseconds == 1 second)
  delay(2000);

  if(V_pot < 2.1)  {
//turn OFF ALL loads when batteries discharged.
  digitalWrite(16,HIGH);
  digitalWrite(5,HIGH);
  digitalWrite(4,HIGH);
  digitalWrite(0,HIGH);
  digitalWrite(15,HIGH); 
  Serial.println();
  Serial.println();
  Serial.println("**********************************************************************************************************************");
  Serial.println("------------------------------------Batteries got fully DISCHARGED!---------------------------------------------------");
  Serial.println("**********************************************************************************************************************");
  Serial.println();
  while(1);     //do nothing    
  }
}
