import pandas as pd
import numpy as np
names = ['blackscholes','bodytrack', 'facesim', 'canneal', 'fluidanimate', 'freqmine', 'swaptions', 'x264']

for name in names:
    filename = 'parsec.' + name + '.dat'
    data = pd.read_table(filename, sep='\t', index_col=0)
    cols = list(data)
    cols.insert(4, cols.pop(cols.index('PST')))
    data = data.loc[:, cols]
    data.to_csv(filename, sep='\t')