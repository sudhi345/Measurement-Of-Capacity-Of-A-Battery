from matplotlib import pyplot as plt
from matplotlib import style
import numpy as np
from numpy import trapz
from scipy.integrate import simps

style.use('ggplot')

file_name= raw_input("Enter the CSV file name: ") #take the file_name from the user
strlen=len(file_name)		#get the length of file_name
if ((file_name[strlen-4 : strlen] != ".csv") and (file_name[strlen-4 : strlen] != ".CSV")):
	file_name += ".csv"	#if file name does not have .csv extension, upend it
resistance=raw_input("Enter the resistance value: ")	#take resistance value from the user
resistance= float(resistance)	#convert the entered value to float
resistance /= 1000		#resistance in kilo ohms
#load values to a list
Value = np.loadtxt(file_name,
			unpack= True,
			skiprows=1,
			usecols=1,
 			delimiter = ',')
#read start time
start_time = np.loadtxt(file_name,
			dtype=str,
			delimiter = ',',
			skiprows=1,
			max_rows=1,
			unpack=True,
			usecols=3)
strtT = "Start Time:\n" + str(start_time)	#create string to display start time
#read end time
end_time = np.loadtxt(file_name,
			dtype=str,
			delimiter=',',
			usecols=3,
			unpack=True,
			skiprows=len(Value))
endT = "End Time:\n" + str(end_time)  #create string to display end time

fig, ax1 = plt.subplots()

l=len(Value) #get the number of columns
x=range(0,2*l-1,2)	#time varies from 0 to 2l-1 with a step size of 2sec
I = [(i/resistance) for i in Value]  	#divided by the load resistance gives the current value (mA)
mAh=trapz(I,dx=2) 	#area under the curve
mAh /= 3600      #to convert time unit from seconds to hour
zz = "Capacity: " + str(mAh)[0 : 7] +"mAh\nNo. of data points:"+str(l)  #string to display capacity
hours = range (0,864000,3600)  #hours in seconds for 10 days
hrNo = range (0,240,1)		#define hour numbers

bbox_props = dict(boxstyle="square,pad=0.3", fc="green", ec="b", lw=1)		#define properties of the square box
ax1.text((x[l-1] + (x[l-1]-x[0])*0.01), Value[l-1], zz, ha="left", va="bottom",
            size=12,
            bbox=bbox_props)		#display the capacity i.e. area under I v/s t
ax1.text(0, -0.25, strtT, ha="center", va="top",
            size=10,
            bbox=bbox_props)		#display start time
ax1.text(2*l-1, -0.25, endT, ha="center", va="top",
            size=10,
            bbox=bbox_props)		#display end Time 

ax1.set_xlabel('Time (hrs)')
ax1.set_ylabel('Voltage (V)')
Vplot, =ax1.plot(x, Value,'b-',label='Voltage (V)')	#plot x v/s Value i.e. voltage
ax1.tick_params(axis='y',labelcolor='blue')      #set tick parameter of y axis
ax1.tick_params(axis='x',labelcolor='black')	#set tick parametr of x axis

plt.xticks(hours,hrNo)

ax2=ax1.twinx()					#use the same x axis
ax2.set_ylabel('Current (mA)')
Cplot, =ax2.plot(x,Value/resistance,'r--',label='Current (mA)')		#plot x v/s current
ax2.tick_params(axis='y',labelcolor='red')		#set tick parameter of secondary y axis

plt.legend(handles=[Vplot,Cplot])			#display legend
fig.tight_layout()
plt.show()
