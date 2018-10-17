#!/usr/bin/env python3

"""Uses list comprehensions to manipulate data."""

__appname__ = '[lc2.py]'
__author__ = 'Dominic Brass'

# Average UK Rainfall (mm) for 1910 by month
# http://www.metoffice.gov.uk/climate/uk/datasets
rainfall = (('JAN',111.4),
            ('FEB',126.1),
            ('MAR', 49.9),
            ('APR', 95.3),
            ('MAY', 71.8),
            ('JUN', 70.2),
            ('JUL', 97.1),
            ('AUG',140.2),
            ('SEP', 27.0),
            ('OCT', 89.4),
            ('NOV',128.4),
            ('DEC',142.2),
           )

# (1) Use a list comprehension to create a list of month,rainfall tuples where
# the amount of rain was greater than 100 mm.

high_rain = [rain for rain in rainfall if rain[1]>100]
print(high_rain)

# (2) Use a list comprehension to create a list of just month names where the
# amount of rain was less than 50 mm. 

low_rain = [rain for rain in rainfall if rain[1]<50]
print(low_rain)

# (3) Now do (1) and (2) using conventional loops (you can choose to do 
# this before 1 and 2 !). 

high_rain_loop = []
for rain in rainfall:
    if rain[1]>100:
        high_rain_loop.append(rain)

low_rain_loop = []
for rain in rainfall:
    if rain[1]<50:
        low_rain_loop.append(rain)

print(high_rain_loop)  
print(low_rain_loop)      