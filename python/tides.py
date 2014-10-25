from pytides.tide import Tide


from pandas import read_csv

df = read_csv('dat2.csv', index_col=1, parse_dates=True)

water_level = df[' Water Level']['2014-08-04 00:00':]


demeaned = water_level.values - water_level.values.mean()

tide = Tide.decompose(demeaned, water_level.index.to_datetime())