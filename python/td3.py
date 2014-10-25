from __future__ import division
import datetime
import json
import requests
import math
import time

print 'moo'

#def get_tide_data():
end = datetime.datetime.now()
day = datetime.timedelta(days=5)
start = end - day
time_str = '%Y%m%d %H:%M'

params = {}
params['begin_date'] = start.strftime(time_str)
params['end_date'] = end.strftime(time_str)
params['product'] = 'water_level'
params['datum'] = 'MSL'
#params['datum'] = 'MLLW'
params['units'] = 'english'
params['time_zone'] = 'GMT'
params['format'] = 'json'
#params['format'] = 'csv'
params['application'] = 'father_son_tides'
#params['application'] = 'NOS.COOPS.TAC.WL'

params['station'] = '8516945'

url = 'http://tidesandcurrents.noaa.gov/api/datagetter'
resp = requests.get(url=url, params=params)
data = json.loads(resp.text)
print data
#data2= str(resp.text)


f = open('bridgeport2.txt', 'r+')
f.write(str(data))
f.close()



##new script

def get_tides(fn):
    """Read tide data from file, return a function that
    gives tide level for specified hour."""
    with open(fn,'r') as fh:
        lines = fh.readlines()

    measured = []
    for line in lines:
        index,cons,ampl,phase,speed = line.split()
        measured.append(tuple(float(x) for x in (ampl,phase,speed)))

    def find_level(hour,total_offset=0,time_offset=0):
        total = total_offset
        for ampl,phase,speed in measured:
            # you could break out the constituents here
            # to see the individual contributions
            cosarg = speed * (hour + time_offset) + phase
            total += ampl * math.cos(cosarg * math.pi/180) # do rad conversion here
        return total

    return find_level


bridgeport = get_tides('bridgeport2.txt')

for hour in range(-24,25,1):
    print("%3sh %7.4f" % (hour,bridgeport(hour,total_offset=3.61999)))






#import datetime
#For a specific date, or the time now:
epoch = datetime.datetime(1991,9,1,0,0,0)
now = datetime.datetime.utcnow()
hourdiff = (now-epoch).days*24

for hour in range(0,25,1):
    print("%3sh %7.4f" % (hour,bridgeport(hour+hourdiff)))







from datetime import datetime
from pytides.tide import Tide
import pytides.constituent as cons
import numpy as np

#These are the NOAA constituents, in the order presented on their website.
constituents = [c for c in cons.noaa if c != cons._Z0]

#Phases and amplitudes (relative to GMT and in degrees and metres)
published_phases = [115.7,140.7,92.6,192,145.5,220.6,159.9,202.8,152.3,117.2,92,0,0,69.7,224.5,141.7,121.9,
228.4,252.1,0,60.1,135.5,0,0,204.5,212.2,112.3,141.8,249.1,211.1,75.1,181.4,140.4,202.4,141.8,155,160.9]

published_amplitudes = [1.142,0.189,0.241,0.1,0.036,0.066,0.08,0.01,0.004,0.022,0.052,0,0,0.03,0.007,0.025,0.009,
0.005,0.008,0,0.024,0.065,0,0,0.004,0.017,0.015,0.002,0.002,0.032,0.003,0.007,0.07,0.009,0.053,0.007,0.008]

#We can add a constant offset (e.g. for a different datum, we will use relative to MLLW):
MTL = 5.113
MLLW = 3.928
offset = MTL - MLLW
constituents.append(cons._Z0)
published_phases.append(0)
published_amplitudes.append(offset)

#Build the model.
assert(len(constituents) == len(published_phases) == len(published_amplitudes))
model = np.zeros(len(constituents), dtype = Tide.dtype)
model['constituent'] = constituents
model['amplitude'] = published_amplitudes
model['phase'] = published_phases

tide = Tide(model = model, radians = False)

#time= tide.at([datetime(2014,8,8,0,0,0), datetime(2014,8,8,6,0,0)])
#print datetime(time)

