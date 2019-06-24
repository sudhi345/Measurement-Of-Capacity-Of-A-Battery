from matplotlib import pyplot as plt
from matplotlib import style
import numpy as np
from numpy import trapz
style.use('ggplot')

x,y = np.loadtxt('testdata.csv',
		 unpack= True,
		 delimiter = ',')

fig=plt.figure()
ax=fig.add_subplot(111)
l=len(y)
x=range(0,2*l-1,2)
mAh=trapz(y)
mAh /= 100
zz=str(mAh)+"mAh\nNo. of data points ="+str(l)
#ax.annotate(z,xy=(2.10,0),xytext=(2.10,0))
bbox_props = dict(boxstyle="square,pad=0.3", fc="cyan", ec="b", lw=2)
ax.text(0, 1, zz, ha="left", va="center",
            size=15,
            bbox=bbox_props)

plt.plot(x,y,'b-')
plt.plot(x,y/0.1,'r--')
plt.title('Discharge Curve')
plt.ylabel('Voltage')
plt.xlabel('Time')
plt.show()

