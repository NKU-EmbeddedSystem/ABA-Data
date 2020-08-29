import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

data = pd.read_table('data.dat', sep='\t', index_col=0)
names = ['blackscholes','bodytrack', 'facesim', 'fluidanimate', 'freqmine', 'swaptions', 'x264']
subjects = ['LLSC', 'STORE', 'other']

fig = plt.figure()
plt.axis('off')
colors = [(249 / 255, 196 / 255, 153 / 255), (204 / 255, 194 / 255, 217 / 255), (1,1,1)]
i = 1

for name in names:
    print(data[name].values)
    num = 240 + i
    i += 1
    fig.add_subplot(num)
    plt.title(name, fontsize=18)
    plt.pie(data[name].values, labels=subjects, colors=colors, shadow=True)
    plt.legend()
plt.show()
