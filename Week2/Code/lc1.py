#!/usr/bin/env python3

"""Seperates triple into component lists"""

__appname__ = '[application name here]'
__author__ = 'Your Name (your@email.address)'
__version__ = '0.0.1'
__license__ = "License for this code/program"

## imports ##
import sys # module to interface our program with the operating system


birds = ( ('Passerculus sandwichensis','Savannah sparrow',18.7),
          ('Delichon urbica','House martin',19),
          ('Junco phaeonotus','Yellow-eyed junco',19.5),
          ('Junco hyemalis','Dark-eyed junco',19.6),
          ('Tachycineata bicolor','Tree swallow',20.2),
         )

#(1) Write three separate list comprehensions that create three different
# lists containing the latin names, common names and mean body masses for
# each species in birds, respectively. 

latin = [x[0] for x in birds]

common = [x[1] for x in birds]

body_mass = [x[2] for x in birds]

print(latin)
print(common)
print(body_mass)

# (2) Now do the same using conventional loops (you can shoose to do this 
# before 1 !). 

latin_loop = set()
for latin_name in birds:
    latin_loop.add(latin_name[0])


common_loop = set()
for common_name in birds:
    common_loop.add(common_name[1])

mass_loop = set()
for mass_name in birds:
    mass_loop.add(mass_name[2])

print(latin_loop)
print(common_loop)
print(mass_loop)

