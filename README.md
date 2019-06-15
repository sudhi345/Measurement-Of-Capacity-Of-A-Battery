# Measurement-Of-Capacity-Of-A-Battery

Capacity of a battery is measured in Ah (ampere-hours, for large batteries) or mAh (milli ampere-hours, for small batteries). This is usually mentioned on the battery or in the datasheets provided by the manufacturer.
But the capacity changes depending on the age of the battery, operating conditions, slightly different chemical composition etc. In order to get the capacity value close to the actual capacity, measuring the same is the method. There are different methods using which one can measure the capacity, for example, Coulomb counting, Voltage monitoring etc. Coulomb counting is the best method so far but it is quite complicated. Hence we go for the second method; monitoring the terminal voltage when a known load is connected.
A microcontroller unit (ESP8266-12E in LOLin board) is used to control the process. The main function of the microcontroller is to connect and disconnect the load to the battery and logging the terminal voltage read from the analog input pin.


