#!/usr/bin/env python3
#
#Author: Dominic Brass
#Script: oaks.py
#Arguements: none
#Date: Oct 2018

"""Demonstrations of list comprehensions."""

taxa = [ 'Quercus robur',
        'Fraxinus excelsior',
        'Pinus sylvestris',
        'Quercus cerris',
        'Quercus petraea'
    ]

def is_an_oak(name):
    return name.lower().startswith('quercus ')

oaks_loops = set()

for species in taxa:
    if is_an_oak(species):
        oaks_loops.add(species)
print(oaks_loops)

oaks_lc = set([species for species in taxa if is_an_oak(species)])
print(oaks_lc)

oaks_loops = set()
for species in taxa:
    if is_an_oak(species):
        oaks_loops.add(species.upper())
print(oaks_loops)

oaks_lc = set([species.upper() for species in taxa if is_an_oak(species)])
print(oaks_lc)