#!/usr/bin/python

"""Aligns two sequences to find maximal matchings."""

__appname__ = '[oaks_debugme.py]'
__author__ = 'Dominic Brass'

import csv
import sys
import pdb
import doctest

#Define function
def is_an_oak(name):
    """ Returns True if name is starts with 'quercus' 
    >>> is_an_oak('Fraxinus sylvatica')
    False
    
    >>> is_an_oak('Quercus asd')
    True

    >>> is_an_oak('Quercuss asd')
    False

    >>> is_an_oak('qquercus asd')
    False
    """
    return name.lower().split(" ")[0] == 'quercus'

def main(argv): 
    f = open('../Data/TestOaksData.csv','r')
    g = open('../Results/JustOaksData.csv','w')
    taxa = csv.reader(f)
    csvwrite = csv.writer(g)
    csvwrite.writerow(["Genus","Species"])
    next(taxa) # Skip header line.
    oaks = set()
    for row in taxa:
        print(row)
        print ("The genus is: ") 
        print(row[0])
        if is_an_oak(row[0]) == True:
            print('FOUND AN OAK!\n')
            csvwrite.writerow([row[0], row[1]])  
    
    return 0
    f.flush()
    f.close() 
    g.flush()
    g.close() 
    
if (__name__ == "__main__"):
    status = main(sys.argv)