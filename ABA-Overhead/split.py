# names = ['bodytrack', 'canneal', 'facesim', 'fluidanimate', 'freqmine', 'immigration', 'swaptions', 'x264']
names = ['blackscholes']
for name in names:
    f = open(name + '.dat')
    lines = f.readlines()
    count = 0
    for i in range(len(lines)):
        if lines[i][0].isdigit() == False:
            if count == 1:
                d1 = open(name + '-HST.dat', 'w')
                d1.writelines(lines[:i+1])
                d1.close()
                d2 = open(name + '-PST.dat', 'w')
                d2.writelines(lines[0:1])
                d2.writelines(lines[i+1:])
                d2.close()
                break
            else:
                count = 1

    f.close()
