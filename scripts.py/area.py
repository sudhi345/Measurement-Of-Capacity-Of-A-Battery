from matplotlib import pyplot as plt
from matplotlib import style
import numpy as np
from numpy import trapz
style.use('ggplot')

x,y = np.loadtxt('testdata.csv',
		 unpack= True,
		 delimiter = ',')

mAh=trapz(y)
print (mAh/100)
