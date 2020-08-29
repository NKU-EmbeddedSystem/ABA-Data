import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

names = ['blackscholes','bodytrack', 'canneal', 'facesim', 'fluidanimate', 'freqmine', 'swaptions', 'x264']
fig = plt.figure()
plt.gca().set_title('Profile on Parsec3.0')
plt.axis('off')
i = 1
width = 0.4
x_labels = ['1', '2', '4', '8', '16', '32', '64']
index = np.arange(len(x_labels))
for name in names:
    num = 240 + i
    i += 1
    fig.add_subplot(num)
    plt.title(name)
    data = pd.read_table(name + '-HST.dat',sep='\t',index_col=0)
    native = data['native']
    exclusive = data['exclusive']
    instrument = data['instrument']
    empty = data['mprotect']
    print(name, native.values)
    plt.bar(index, empty.values, width = 0.35, ec='black', ls='-', label='HST', hatch='/', tick_label=x_labels, color='white')
    plt.bar(index, empty.values, width = 0.35, ec='black', ls='-', label='PST', hatch='\\', tick_label=x_labels, color='white')
    plt.bar(index, empty.values, width = 0.35, ec='black', ls='-', label='native', tick_label=x_labels, color=(243/255,133/255,36/255))
    plt.bar(index, empty.values, width = 0.35, ec='black', ls='-', label='exclusive', tick_label=x_labels, color=(65/255,113/255,156/255))
    plt.bar(index, empty.values, width = 0.35, ec='black', ls='-', label='instrument', tick_label=x_labels, color=(200/255,35/255,52/255))
    plt.bar(index, empty.values, width = 0.35, ec='black', ls='-', label='mprotect', tick_label=x_labels, color=(100/255,100/255,100/255))
    if i == 6:
        plt.legend()

    plt.bar(index, native.values, width = 0.35, ec='black', ls='-', label='native', hatch='/', color=(243/255,133/255,36/255))
    plt.bar(index, exclusive.values, width = 0.35, ec='black', ls='-', label='exclusive', hatch='/', bottom=native.values, color=(65/255,113/255,156/255))
    plt.bar(index, instrument.values, width = 0.35, ec='black', ls='-', label='instrument', hatch='/', bottom=native.values+exclusive.values, tick_label=x_labels, color=(200/255,35/255,52/255))
    
    data = pd.read_table(name + '-PST.dat',sep='\t',index_col=0)
    native = data['native']
    exclusive = data['exclusive']
    mprotect = data['mprotect']
    print(name, native.values)
    plt.bar(index + width, mprotect.values, width = 0.35, ec='black', ls='-', label='mprotect', hatch='\\', bottom=native.values+exclusive.values, color=(100/255,100/255,100/255))
    
    plt.bar(index + width, native.values, width = 0.35, ec='black', ls='-', label='native', hatch='\\', color=(243/255,133/255,36/255))
    plt.bar(index + width, exclusive.values, width = 0.35, ec='black', ls='-', label='exclusive', hatch='\\', bottom=native.values, color=(65/255,113/255,156/255))
    plt.xlabel('threads')
    plt.ylabel('elapsed time\s')
    # fig.set_xlabel('threads')
    # fig.set_ylabel('elapsed time\s')

plt.show()
