# Measurement-Of-Capacity-Of-A-Battery

## Objective :
<br>
	To calculate the estimated battery life for a device with the given batteries and in tern use the data to calculate for any battery.
<br>
##  Why do we need this?
Capacity of a battery is measured in Ah (ampere-hours, for large batteries) or mAh (milli ampere-hours, for small batteries). 
This is usually mentioned on the battery or in the datasheets provided by the manufacturer.
But the capacity changes depending on the age of the battery, operating conditions, slightly different chemical composition etc. 
So it affects final result if use the capacity value provided by the manufacturer. 
Follow the link to [learn more](https://batteryuniversity.com/learn/article/battery_definitions).
<br> 
In order to get the actual capacity (close-enough-value), measuring the same is the method. 
There are different methods using which one can measure the capacity, for example, Coulomb counting, Voltage monitoring etc.
([Learn more here](https://www.quora.com/How-can-we-measure-a-batterys-real-capacity-in-Mah-or-ah-accurately))
(Or [here](https://batteryuniversity.com/learn/article/how_to_measure_capacity)). 
<br>
	Here we use the second method; monitoring the terminal voltage when a known load is connected. 
<br>
### Method:
<br>
A microcontroller unit (ESP8266-12E in LOLin board) is used to control the process. 
The main function of the microcontroller is to connect and disconnect the load to the battery and logging 
the terminal voltage read from the analog input pin. 
The read voltage is uploaded to AdafruitIO MQTT server for easy access to the data.
The details about the charger and the battery can be found in 'modified_charger' directory.
The circuit connections and PCB design (using KiCAD) can be found in the directory PCB_KICAD.  

