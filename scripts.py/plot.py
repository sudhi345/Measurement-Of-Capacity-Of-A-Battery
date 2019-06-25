from matplotlib import pyplot as plt
from matplotlib import style
import numpy as np
from numpy import trapz

style.use('ggplot')

file_name= raw_input("Enter the CSV file name: ")
strlen=len(file_name)
if ((file_name[strlen-4 : strlen] != ".csv") and (file_name[strlen-4 : strlen] != ".CSV")):
	file_name += ".csv"
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
strtT = "Start Time:\n" + str(start_time)
#read end time
end_time = np.loadtxt(file_name,
			dtype=str,
			delimiter=',',
			usecols=3,
			unpack=True,
			skiprows=len(Value))
endT = "End Time:\n" + str(end_time)
fig=plt.figure()
ax=fig.add_subplot(111)
l=len(Value) #get the number of columns
x=range(0,2*l-1,2)	#time varies from 0 to 2l-1 with a step size of 2sec
mAh=trapz(Value)	#area under the curve
mAh /= 100		#divided by the load resistance gives the capacity in  mAh
zz = "Capacity: " + str(mAh)[0 : 7] +"mAh\nNo. of data points:"+str(l)  #string to display capacity
bbox_props = dict(boxstyle="square,pad=0.3", fc="cyan", ec="b", lw=1)
ax.text(-1200, 1, zz, ha="right", va="bottom",
            size=10,
            bbox=bbox_props)
ax.text(0, -2.5, strtT, ha="center", va="top",
            size=10,
            bbox=bbox_props)
ax.text(2*l-1, -2.5, endT, ha="center", va="top",
            size=10,
            bbox=bbox_props)
ax.text(-1200, 15, "-- Current (mA)", ha="right", va="center",
	size=15,
	bbox= dict (fc="red"))
ax.text(-1200, 13, "-- Voltage (V)", ha="right", va="center",
	size=15,
	bbox= dict (fc="blue"))

hours = range (0,x[l-1],3600)
for i in hours:
	dispstr = str(i/3600) + " hr(s)"
	ax.text( i, 0, dispstr, ha="center", va="top",
        size=8,
        bbox= dict (fc="green"))

plt.plot(x,Value,'b-')
plt.plot(x,Value/0.1,'r--')
plt.title('Discharge Curve')
#plt.ylabel('Voltage')
plt.xlabel('Time (seconds)')
plt.show()

