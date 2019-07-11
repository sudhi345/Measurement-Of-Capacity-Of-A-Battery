/********************************************************************************
BSD 3-Clause License

Copyright (c) 2019, Sudheendra Hegde
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

*****************************************************************************************/

#include "config.h"
#include "DischargeBattery.h"

float Vbat = 0, saved = 0;
float last = -1;

AdafruitIO_Feed *analog = io.feed("analog"); //Set up the feed. Replace "analog" in this line with the name of the feed that you created

void setup() {
  //set pinMode
  pinMode(LOAD1,OUTPUT);  //load resistance of 464ohm
  pinMode(LOAD2,OUTPUT);  //load resistance of 232ohm
  pinMode(LOAD3,OUTPUT);  //load resistance of 116ohm
  pinMode(DUT,OUTPUT);       //load is the Device Under Test (DUT)
  pinMode(SW,INPUT_PULLUP);         //push button (active high input)
  pinMode(EN_VOLTAGE_DIVIDER,OUTPUT);  //pin connected to gate of the mosfet which enables the voltage divider
  pinMode(Vin,INPUT);
  
  turnOffAllLoad();   //make sure all loads are off initially
  Wire.begin(SDA_PIN,SCL_PIN);
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);            // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {      // Address 0x3C for 128x32
    for(;;);                                            // SSD1306 allocation failed, Don't proceed, loop forever
  }
  display.clearDisplay();                       //clear the display buffer
  display.setRotation(2);                       //rotate 180 degerees
  display.drawBitmap(                           //draw bitmap image
    (display.width()  - logo_width ) / 2,       //align it at the center
    (display.height() - logo_height) / 2,
    logo, logo_width, logo_height, 1);
  display.display();                            //actually display the logo
  delay(2000);
  display.clearDisplay();        //clear the display buffer
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(3,0);
  display.println("    Connecting to   ");
  display.setFont(&FreeSerif9pt7b);
  display.setCursor(0,24);
  display.println("     AdafruitIO    ");
  display.display(); // actually display all of the above
  
  io.connect();   // connect to io.adafruit.com
  
  // wait for a connection
  while(io.status() < AIO_CONNECTED) {
    delay(500);
  }
  display.clearDisplay();
  display.setCursor(25,18);
  display.println("Connected");
  display.display();
  delay(1000);
  queueInit();     //initialize queue
  checkBattery();   //verify whther connected battery has voltage > VLowerCutOff
  loadSelect();           //let the user select load / DUT
  display.setFont(&FreeSans9pt7b);  //change font to Sans
  StartTime = millis();     //save the starting time
}

void loop() {
  _time = millis();
  // io.run(); is required for all sketches. It should always be present at the top of your loop function. It keeps the client connected to
  // io.adafruit.com, and processes any incoming data.
  io.run();

  if( !ONCE_DISCHARGED )  
    Vbat = readVoltage();

  if( !(Vbat < VLowerCutOff) )
    enqueue(Vbat);    //enqueue the values 

  if(Vbat < VLowerCutOff)  {   //if the battery Vbat falls below the lower cut off
      ONCE_DISCHARGED = 1;         //clear the ONCE_DISCHARGED so that it does not oscillate when terminal Vbat rises slightly.
      turnOffAllLoad();    //turn OFF ALL loads when batteries got fully discharged.
      EndTime = millis();  //store end time
      DISP_ON = 1; //display that the batteries got discharged
      displayedAt = millis ();  //this is required when display is turned on using DISP_ON
      while(1){
        if (rear != front)    //queue is not empty
          if(!(io.status() < AIO_CONNECTED)) {     //connected 
            saved = dequeue();                             //read value from the queue
            analog->save(saved);                           // save the value to the feed
          } 
        checkForUpdate();
        yield();  
     }
  }
  
  while( (millis() - _time) < 2000){    //wait for 2 seconds
      checkForUpdate();
      if (rear != front)    //queue is not empty
        if(!(io.status() < AIO_CONNECTED)) {     //connected 
          saved = dequeue();                             //read value from the queue
          analog->save(saved);                           // save the value to the feed
        }
      yield();
  }
}
