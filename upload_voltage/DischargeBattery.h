#define LOAD_560 16       //pin D0, load resistance of 560ohm
#define LOAD_232 5        //pin D1, load resistance of 232ohm
#define LOAD_116 4        //pin D2, load resistance of 116ohm
#define LOAD_047 13       //pin D7, load resistance of 047ohm
#define DUT      15       //pin D8, load is the Device Under Test (DUT)
#define FLASH_BUTTON 0    //pin D3, to which the 'Flash' push button is connected.

void turnOffAll() {
  digitalWrite(LOAD_560,HIGH);
  digitalWrite(LOAD_232,HIGH);
  digitalWrite(LOAD_116,HIGH);
  digitalWrite(LOAD_047,HIGH);
  digitalWrite(DUT,HIGH);
}
