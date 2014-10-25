#!/usr/bin/python
import datetime
import ephem
d1 = ephem.next_full_moon('1984')
print(d1)
d2 = ephem.next_new_moon(d1)
print(d2)

d1 = ephem.next_equinox('2000')
print(d1)
d2 = ephem.next_solstice(d1)
print(d2)
t = d2 - d1
print("Spring lasted %.1f days" % t)


lowell = ephem.Observer()
lowell.lon = '-111:32.1'
lowell.lat = '35:05.8'
lowell.elevation = 2198
lowell.date = '1986/3/13'
j = ephem.Jupiter()
j.compute(lowell)
print(j.circumpolar)
#False
print(j.neverup)
#False
print('%s %s' % (j.alt, j.az))
#0:57:44.7 256:41:01.3



sitka = ephem.Observer()
sitka.date = '1999/6/27'
sitka.lat = '57:10'
sitka.lon = '-135:15'
m = ephem.Mars()
print(sitka.next_transit(m))
#1999/6/27 04:22:45
print('%s %s' % (m.alt, m.az))
#21:18:33.6 180:00:00.0
print(sitka.next_rising(m, start='1999/6/28'))
#1999/6/28 23:28:25
print('%s %s' % (m.alt, m.az))
#-0:00:05.8 111:10:41.6

ephem.julian_date('2000/1/1')

m = ephem.Moon('1980/6/1')
print(ephem.constellation(m))
#('Sgr', 'Sagittarius')


gatech = ephem.Observer()
gatech.lon = '-84.39733'
gatech.lat = '33.775867'
gatech.elevation = 320
gatech.date = '1984/5/30 16:22:56'
v = ephem.Venus(gatech)
print('%s %s' % (v.alt, v.az))
#72:19:44.8 134:14:25.3





rigel = ephem.star('Rigel')
print('%s %s' % (rigel._ra, rigel._dec))
#5:14:32.30 -8:12:06.0

#        PyEphem provides a catalog of bright stars.
#       Each call to star() returns a new FixedBody whose coordinates are those of the named star.

stuttgart = ephem.city('Stuttgart')
print(stuttgart.lon)
#    9:10:50.8
print(stuttgart.lat)
#    48:46:37.6




gatech = ephem.Observer()
gatech.lon, gatech.lat = '-84.39733', '33.775867'

gatech.date = '1984/5/30 16:22:56'   # 12:22:56 EDT
sun, moon = ephem.Sun(), ephem.Moon()
sun.compute(gatech)
moon.compute(gatech)
print("%s %s" % (sun.alt, sun.az))
#70:08:39.2 122:11:26.4
print("%s %s" % (moon.alt, moon.az))
#70:08:39.5 122:11:26.0


print(ephem.separation((sun.az, sun.alt), (moon.az, moon.alt)))
#0:00:00.3
print("%.8f %.8f %.11f" % (sun.size, moon.size, sun.size - moon.size))
#1892.91210938 1891.85778809 1.05432128906




gatech.date = '1984/5/31 00:00'   # 20:00 EDT
sun.compute(gatech)
for i in range(8):
     old_az, old_alt = sun.az, sun.alt
     gatech.date += ephem.minute * 5.
     sun.compute(gatech)
     sep = ephem.separation((old_az, old_alt), (sun.az, sun.alt))
     print("%s %s %s" % (gatech.date, sun.alt, sep))