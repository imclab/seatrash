from __future__ import division
from datetime import datetime, timedelta, date
import calendar
from pytides.tide import Tide
from pytz import timezone
import numpy as np
from jinja2 import Environment, FileSystemLoader
import re
import json
import requests
import math
import time


from datetime import datetime
from pytides.tide import Tide
import pytides.constituent as cons
import numpy as np

import datetime
#For a specific date, or the time now:
epoch = datetime.datetime(1991,9,1,0,0,0)
now = datetime.datetime.utcnow()
hourdiff = (now-epoch).days*24


#http://tidesandcurrents.noaa.gov/api/datagetter?product=predictions&application=NOS.COOPS.TAC.WL&begin_date=20140807&end_date=20140831&datum=MLLW&station=8516945&time_zone=GMT&units=english&interval=&format=csv

#http://tidesandcurrents.noaa.gov/api/datagetter?product=predictions&application=NOS.COOPS.TAC.WL&begin_date=20140801&end_date=20140831&datum=MLLW&station=8516945&time_zone=GMT&units=english&interval=&format=csv

#http://tidesandcurrents.noaa.gov/api/datagetter?product=water_level&application=NOS.COOPS.TAC.WL&begin_date=20140801&end_date=20140831&datum=MLLW&station=8516945&time_zone=GMT&units=english&format=csv



# bridgeport = get_tides('bridgeport2.txt')


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
#params['datum'] = 'MSL'
params['datum'] = 'MLLW'
params['units'] = 'english'
params['time_zone'] = 'GMT'
params['format'] = 'csv'
#params['application'] = 'father_son_tides'
params['application'] = 'NOS.COOPS.TAC.WL'

params['station'] = '8516945'

url = 'http://tidesandcurrents.noaa.gov/api/datagetter'
resp = requests.get(url=url, params=params)
#data = json.loads(resp.text)
data2= str(resp.text)


f = open('bridgeport4.csv', 'r+')
f.write(data2)

f.close()




# def get_tides(fn):
#     """Read tide data from file, return a function that
#     gives tide level for specified hour."""
#     with open(fn,'r') as fh:
#         lines = fh.readlines()

#     measured = []
#     for line in lines:
#         index,cons,ampl,phase,speed,a,b,c,d,e = line.split()
        #measured.append(tuple(float(x) for x in (ampl,phase,speed)))
        #measured.append(index)
        #measured.append(cons)


    # def find_level(hour,total_offset=0,time_offset=0):
    #     total = total_offset
    #     for ampl,phase,speed in measured:
    #         # you could break out the constituents here
    #         # to see the individual contributions
    #         cosarg = speed * (hour + time_offset) + phase
    #         total += ampl * math.cos(cosarg * math.pi/180) # do rad conversion here
    #     return total

    # return find_level



#bridgeport = get_tides('bridgeport2.csv')

#for hour in range(-24,25,1):
 #   print("%3sh %7.4f" % (hour,bridgeport(hour,total_offset=3.61999)))



##Import our tidal data
station_id = '8516945'
heights = []
t = []
f = open('bridgeport4.csv', 'r')
rows = []
stuff=[]
moo=[]
moo2=[]

#for hour in range(0,25,1):
#    print("%3sh %7.4f" % (hour,bridgeport(hour+hourdiff)))


for i, line in enumerate(f):
    #print line
   # Time,Waterlevel,Sigma,O,F,R,L,Quality,p = line.split()
    newline=re.split(',',line)
    length= len(newline)
    if length==8:
        #print newline[0]
        #print newline[1]
        height=newline[1] # if newline:
        #    for datas in newline:
         #       print datas
        #print newline[0]
    #if newline[1]:
     #   print newline[1]
        # if newline[1]!= "":
        #     print newline[1]
    #if i>1:
    #print newline[0]

    #print newline[1]
       # t.append(datetime.strptime(newline[0], "%Y-%m-%d %H:%M"))
        stuff=re.split(' ',newline[0])
        #t.append(stuff[1])
        #heights.append(newline[1])

#        moo2.append({'time': stuff[1], 'height': "{0:.2f}".format(height)})

        #moo2.append({'time': stuff[1], 'height': "{0:.2f}".format(height)})
       #moo.array(stuff[1],newline[1])
        #stuff.append(time[newline[0]])
        #stuff.append(height[newline[1]])

        #print stuff
        rows.append([newline[0], stuff[1], newline[1]])

f.close()

##Fit the tidal data to the harmonic model using Pytides
#my_tide = Tide.decompose(np.array(heights[::10]), np.array(t[::10]))
#print np.array(heights[::10])
#print np.array(t[::10])

##Prepare our variables for the template
location = "King's Point"
tzname = "US/Eastern"
tz = timezone(tzname)
utc = timezone('UTC')
datum = "MLLW"
units = "metres"
year = 2014
month = 9
#rows = []
# for day in range(1,calendar.monthrange(year,month)[1] + 1):
#     start = tz.localize(datetime.datetime(year, month, day))
#     end = start + timedelta(days=1)
#     startUTC = utc.normalize(start.astimezone(utc))
#     endUTC = utc.normalize(end.astimezone(utc))
#     extremaUTC = my_tide.extrema(startUTC, endUTC)
#     #print extremaUTC
#     date = {'date': day, 'day': calendar.day_abbr[start.weekday()]}
#     extrema = []
#     for e in extremaUTC:
#         time = tz.normalize(e[0].astimezone(tz))
#         ##Round the time to the nearest minute
#         time = time + timedelta(minutes=time.second > 30)
#         try:
#             height = e[1]
#             print height
#             extrema.append({'time': time.strftime('%H:%M'), 'height': "{0:.2f}".format(height)})
#         except RuntimeError:
#             print("Error - curve_fit failed")
#     #This is just for nicer formatting of days with only three tides
#     for _ in range(4 - len(extrema)):
#         extrema.append({'time': '', 'height': ''})
#     rows.append([date, extrema])

##Render our template
env = Environment(loader=FileSystemLoader(""),trim_blocks=True)
template = env.get_template('template.html')
with open("output.html", "wb") as fh:
    fh.write(template.render(
    location = location,
    tzname = tzname,
    datum = datum,
    units = units,
    year = year,
    month = calendar.month_name[month],
    rows = rows
    ))