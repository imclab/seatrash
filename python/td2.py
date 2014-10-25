import datetime
import json
import requests

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
params['units'] = 'english'
params['time_zone'] = 'lst'
params['format'] = 'json'
params['application'] = 'father_son_tides'
params['station'] = '8516945'

url = 'http://tidesandcurrents.noaa.gov/api/datagetter'
resp = requests.get(url=url, params=params)
data = json.loads(resp.text)
print data


