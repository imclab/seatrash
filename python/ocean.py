from __future__ import division
import requests
import json
#import pymongo
import datetime
#from pymongo import MongoClient
from optparse import OptionParser


# example url:
# "http://tidesandcurrents.noaa.gov/api/datagetter?begin_date=20130808 15:00&end_date=20130808 15:06&
# station=8454000&product=water_temperature&units=english&time_zone=gmt&application=ports_screen&format=json"

# station_id="8516945"
# product_id="water_temperature"

# baseurl = "http://tidesandcurrents.noaa.gov/api/datagetter?"

# def noaa_data(station_id, product):

#   param_date = "date=latest"
#   param_time_zone = "time_zone=gmt"
#   param_application = "application=kennygorman"
#   param_format = "format=json"
#   param_units = "units=english"

#   param_station = "station="+station_id
#   param_product = "product="+product_id

#   parameters = [param_product, param_station, param_date, param_time_zone, param_application, param_format, param_units]
#   param_url = "&".join(parameters)
#   url = "".join([baseurl,param_url])
#   print url
#   try:
#       r = requests.get(url)
#       #print r.text
#   except Exception, e:
#       print "couldn't fetch url %s" % e

#   stuff=json.loads(r.text)
  #print stuff



import requests
import json
#import pymongo
import datetime
#from pymongo import MongoClient
from optparse import OptionParser
from time import gmtime, strftime
import re

# example url:
# "http://tidesandcurrents.noaa.gov/api/datagetter?begin_date=20130808 15:00&end_date=20130808 15:06&
# station=8454000&product=water_temperature&units=english&time_zone=gmt&application=ports_screen&format=json"

# Tide Predictions: /api/datagetter?product=predictions&application=NOS.COOPS.TAC.WL&begin_date=20140913&end_date=20140914&datum=MLLW&station=8729840&time_zone=GMT&units=english&interval=&format=json
# XML JSON CSV

# Datums: /api/datagetter?product=datums&application=NOS.COOPS.TAC.WL&station=8729840&units=english&format=json
# XML JSON CSV

# Water Levels: /api/datagetter?product=water_level&application=NOS.COOPS.TAC.WL&begin_date=20140913&end_date=20140914&datum=MLLW&station=8729840&time_zone=GMT&units=english&format=json
#url = 'http://tidesandcurrents.noaa.gov/stations.html?type=Water%20Levels&sort=0'

# Barometric Pressure: /api/datagetter?product=air_pressure&application=NOS.COOPS.TAC.MET&begin_date=20140913&end_date=20140914&station=8729840&time_zone=GMT&units=english&interval=6&format=json
# XML JSON CSV

# Air Temperature: /api/datagetter?product=air_temperature&application=NOS.COOPS.TAC.MET&begin_date=20140913&end_date=20140914&station=8729840&time_zone=GMT&units=english&interval=6&format=json
# XML JSON CSV

# Winds: /api/datagetter?product=wind&application=NOS.COOPS.TAC.MET&begin_date=20140913&end_date=20140914&station=8729840&time_zone=GMT&units=english&interval=6&format=json
# XML JSON CSV


# Conductivity: /api/datagetter?product=conductivity&application=NOS.COOPS.TAC.PHYSOCEAN&begin_date=20140913&end_date=20140914&station=8729840&time_zone=GMT&units=english&interval=6&format=json
# XML JSON CSV

# Water Temperature: /api/datagetter?product=water_temperature&application=NOS.COOPS.TAC.PHYSOCEAN&begin_date=20140913&end_date=20140914&station=8729840&time_zone=GMT&units=english&interval=6&format=json


#http://opendap.co-ops.nos.noaa.gov/axis/webservices/waterlevelrawonemin/response.jsp?stationId=8729840&beginDate=20140914+01%3A00&endDate=20140914+01%3A30&datum=MLLW&unit=1&timeZone=0&format=text&Submit=Submit

#http://opendap.co-ops.nos.noaa.gov/axis/webservices/waterlevelrawonemin/response.jsp?stationId=8729840&beginDate=20140914+01%3A00&endDate=20140914+01%3A30&datum=MLLW&unit=1&timeZone=0&format=xml&Submit=Submit

class Ocean:

    def __init__(self):
         print "boo"
 #       self.connection = MongoClient(options.host,options.port)
  #      self.database = self.connection[options.db]
   #     self.database.authenticate(options.username, options.password)

    def noaa_data(self,station_id,product_id):

        baseurl = "http://tidesandcurrents.noaa.gov/api/datagetter?"

        end2 = datetime.datetime.now()
        #print end2
#        d = datetime.datetime.strptime(end2, "%Y-%m-%d %H:%M:%S")
#        print d

        day2 = datetime.timedelta(days=1)
        start2 = str(end2 - day2)
        #print start2
        import dateutil.parser
        end3=str(end2)
        end4 = dateutil.parser.parse(end3)
        #print end4
        end5=str(end4)
        start5=str(start2)

        start6=re.split(' ',start5)
        #print st[0]
        end6=re.split(' ',end5)
        end7=end6[0]
        start7=start6[0]
        end = end7.replace("-", "")
        start = start7.replace("-","")
        #print start
        #print end
        #time_str = '%Y%m%d'
        #start=strptime(start2, "%Y%m%d")
        #end=strftime('%Y%m%d', end2)
        #print start

        param_date = "date=latest"
        param_time_zone = "time_zone=gmt"
        param_application = "application=NOS.COOPS.TAC.PHYSOCEAN"
        param_format = "format=json"
        param_units = "units=english"

        param_station = "station="+station_id
        param_product = "product="+product_id
        param_application = "application=NOS.COOPS.TAC.PHYSOCEAN"
        param_datum=""

        if product_id=="water_level":
          param_application = "application=NOS.COOPS.TAC.WL"
          param_datum="datum=MLLW"
          #param_date="begin_date="+start+"&end_date="+end

        if product_id=="water_temperature":
          param_application = "application=NOS.COOPS.TAC.PHYSOCEAN"
          param_date = "date=latest"

        if product_id=="air_temperature":
          param_application = "application=NOS.COOPS.TAC.MET"
          param_date = "date=latest"

        if product_id=="wind":
          param_application = "application=NOS.COOPS.TAC.MET"
          #param_date="begin_date="+start+"&end_date="+end+"&interval=6"

        if product_id=="humidity":
          param_application = "application=NOS.COOPS.TAC.WL"
          param_date="date=latest"

        if product_id=="predictions":
          param_application = "application=NOS.COOPS.TAC.WL"
          param_datum="datum=MLLW"
          #param_date="begin_date="+start+"&end_date="+end

        if product_id=="visibility":
          param_application = "application=NOS.COOPS.TAC.MET"
        if product_id=="air_pressure":
          param_application = "application=NOS.COOPS.TAC.MET"
        if product_id=="salinity":
          param_application = "application=NOS.COOPS.TAC.MET"
        if product_id=="datums":
          param_application = "application=NOS.COOPS.TAC.WL"
          param_date="date=latest"

        if product_id=="one_minute_water_level":
          param_application = "application=NOS.COOPS.TAC.WL"
          #param_date="begin_date="+start+"&end_date="+end
          param_datum="datum=MLLW"


        parameters = [param_product, param_station, param_date, param_time_zone, param_application, param_format, param_units, param_datum]
        param_url = "&".join(parameters)
        url = "".join([baseurl,param_url])
        print "\n\n\n"+url+""
        try:
            r = requests.get(url)
        except Exception, e:
            print "couldn't fetch url %s" % e

        return json.loads(r.text)

    def to_date(self, value):
      """ format string in format 2014-05-19 16:18 to datetime """
      return datetime.datetime.strptime(value, "%Y-%m-%d %H:%M")

    def get_stations(self):
      import datetime
      import json
      import requests
      import math
      import time
      import re

      #print 'moo'

      #def get_tide_data():
      end = datetime.datetime.now()
      day = datetime.timedelta(days=5)
      start = end - day
      time_str = '%Y%m%d %H:%M'

      params = {}

      url = 'http://tidesandcurrents.noaa.gov/stations.html?type=Water%20Levels&sort=0'

      resp = requests.get(url=url, params=params)
      data = resp.text
      #print data
      #data2= str(resp.text)

      from bs4 import BeautifulSoup
      soup = BeautifulSoup(data)
      i=0
      datums=[]
      #print soup.find_all(class='span4 station', a)
      for link in soup.findAll('div', {'class': 'span4 station'}, 'a'):
          i=i+1
          #print i
          link2= str(link)
          datum= re.findall(r'\d+', link2)
          datums+=[datum[1]]
      return datums

    def transform_data(self):
        """ probe API and save document into db """

        products = ['water_level','predictions','water_temperature','air_temperature','humidity','wind','visibility','air_pressure','salinity','datums','one_minute_water_level']

        all_stations = self.get_stations()
        #print all_stations

        for station in all_stations:
            #print station
            station_id=station
            station_doc = {}
            station_doc['fetch_date'] = datetime.datetime.now()
            station_doc['station_id'] = station_id
            station_doc['products'] = []

            for product in products:

                # fetch raw data
                station_data = self.noaa_data(station_id, product)


                #{u'data': [{u'f': u'0,0,0', u't': u'2014-07-12 21:00', u'v': u'1015.8'}], u'metadata': {u'lat': u'21.3067', u'lon': u'-157.8670', u'id': u'1612340', u'name': u'Honolulu'}}

                # if it's an error code skip skip and keep processing
                if "error" not in station_data:

                    product_detail = {}

                    # metadata items belong to the station
                    if 'metadata' in station_data:
                        for key in station_data['metadata']:
                            station_doc[key] = station_data['metadata'][key]
                            name= station_data['metadata']['name']+"\n"
                            #print key
                        del station_data['metadata']

                    # data items belong to a product
                    if 'data' in station_data:
                        for key in station_data['data'][0]:
                            if key == 'v':
                                product_detail[key] = float(station_data['data'][0][key])
                            elif key == 't':
                                product_detail[key] = self.to_date(station_data['data'][0][key])
                            else:
                                product_detail[key] = station_data['data'][0][key]

                    # slight denormalization/key naming
                    product_detail['name'] = product
                    station_doc['products'].append(product_detail)

                    if 'id' in station_doc:
                      station_doc['id'] = int(station_doc['id'])
                      station_doc['station_id'] = int(station_doc['station_id'])
                    # geo is in the form: { loc: { type: "Point", coordinates: [ 40, 5 ] } } (lon/lat)

                    geo_array = []
                    if 'lon' in station_doc:
                      geo_array.append(float(station_doc['lon']))
                      geo_array.append(float(station_doc['lat']))
                      station_doc['loc'] = {"type":"Point", "coordinates": geo_array }
                      del station_doc['lon']
                      del station_doc['lat']
                print name+""
                print str(station_id)+""
                #print station_data['metadata']
                print str(product)+""
                print str(station_data)+"\n\n"

            if len(station_doc['products']) > 0:
                try:
                    #self.database['ocean_data'].save(station_doc)
                    #print station_doc
                    print "mooo\r\n\n\n\n\n\n"
                except Exception, e:
                    print "Problem inserting: %s" % e

if __name__ == "__main__":

    # parser = OptionParser()
    # parser.add_option("--hostname", dest="host",help="mongodb hostname to connect to")
    # parser.add_option("--port",dest="port",type=int,help="mongodb port to connect to")
    # parser.add_option("--db",dest="db",help="Database to connect to")
    # parser.add_option("--username",dest="username",help="username")
    # parser.add_option("--password",dest="password",help="password")
    # (options, args) = parser.parse_args()

    ocean_logger = Ocean()
    ocean_logger.transform_data()