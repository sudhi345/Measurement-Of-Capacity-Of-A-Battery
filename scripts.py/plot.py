from matplotlib import pyplot as plt
from matplotlib import style
import numpy as np
from numpy import trapz

style.use('ggplot')

file_name= raw_input("Enter the CSV file name: ")
strlen=len(file_name)
if ((file_name[strlen-4 : strlen] != ".csv") and (file_name[strlen-4 : strlen] != ".CSV")):
	file_name += ".csv"
Value = np.loadtxt(file_name,
			unpack= True,
			skiprows=1,
			usecols=1,
 			delimiter = ',')

start_time = np.loadtxt(file_name,
			dtype=str,
			delimiter = ',',
			skiprows=1,
			max_rows=1,
			unpack=True,
			usecols=3)

end_time = np.loadtxt(file_name,
			dtype=str,
			delimiter=',',
			usecols=3,
			unpack=True,
			skiprows=len(Value))

fig=plt.figure()
ax=fig.add_subplot(111)
l=len(Value)
x=range(0,2*l-1,2)
mAh=trapz(Value)
mAh /= 100
zz = "Capacity: " + str(mAh)[0 : 7] +"mAh\nNo. of data points:"+str(l)
bbox_props = dict(boxstyle="square,pad=0.3", fc="cyan", ec="b", lw=2)
ax.text(-1500, 1, zz, ha="right", va="bottom",
            size=10,
            bbox=bbox_props)
ax.text(0, -2.5, start_time, ha="center", va="top",
            size=10,
            bbox=bbox_props)
ax.text(2*l-1, -2.5, end_time, ha="center", va="top",
            size=10,
            bbox=bbox_props)
ax.text(-1500, 15, "-- Current (mA)", ha="right", va="center",
	size=15,
	bbox= dict (fc="red"))
ax.text(-1500, 13, "-- Voltage (V)", ha="right", va="center",
	size=15,
	bbox= dict (fc="blue"))
plt.plot(x,Value,'b-')
plt.plot(x,Value/0.1,'r--')
plt.title('Discharge Curve')
#plt.ylabel('Voltage')
plt.xlabel('Time')
plt.show()

