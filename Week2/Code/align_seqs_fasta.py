#!/usr/bin/python

"""Aligns two sequences to find maximal matchings for input sequences."""

__appname__ = '[align_seqs_fasta.py]'
__author__ = 'Dominic Brass'

import csv
import copy
import itertools
import sys

if len(sys.argv) == 3:
    with open(sys.argv[1]) as f:
        next(f) # Skip header line.
        seq1 = [line.rstrip('\n') for line in f]
else:
    with open("../Data/fasta/407228326.fasta") as f:
        next(f) # Skip header line.
        seq1 = [line.rstrip('\n') for line in f]

seq1 = list(itertools.chain.from_iterable(seq1))
seq1 = ''.join(map(str, seq1))

if len(sys.argv) == 3:
    with open(sys.argv[2]) as f:
        next(f) # Skip header line.
        seq2 = [line.rstrip('\n') for line in f]
else:
    with open("../Data/fasta/407228412.fasta") as f:
        next(f) # Skip header line.
        seq2 = [line.rstrip('\n') for line in f]

seq2 = list(itertools.chain.from_iterable(seq2))
seq2 = ''.join(map(str, seq2))


seq_output = open('../Results/Seq_out_fasta.csv', 'w')

print(seq1)

# These are the two sequences to match

# assign the longest sequence s1, and the shortest to s2
# l1 is the length of the longest, l2 that of the shortest

l1 = len(seq1)
l2 = len(seq2)
if l1 >= l2:
    s1 = seq1
    s2 = seq2
else:
    s1 = seq2
    s2 = seq1
    l1, l2 = l2, l1 # swap the two lengths

# function that computes a score
# by returning the number of matches 
# starting from arbitrary startpoint
def calculate_score(s1, s2, l1, l2, startpoint):
    # startpoint is the point at which we want to start
    matched = "" # contains string for alignement
    score = 0
    for i in range(l2):
        if (i + startpoint) < l1:
            # if its matching the character
            if s1[i + startpoint] == s2[i]:
                matched = matched + "*"
                score = score + 1
            else:
                matched = matched + "-"

    # build some formatted output
    print("." * startpoint + matched)           
    print("." * startpoint + s2)
    print(s1)
    print(score) 
    print("")

    return score

calculate_score(s1, s2, l1, l2, 0)
calculate_score(s1, s2, l1, l2, 1)
calculate_score(s1, s2, l1, l2, 5)

# now try to find the best match (highest score)
my_best_align = None
my_best_score = -1

for i in range(l1):
    z = calculate_score(s1, s2, l1, l2, i)
    if z > my_best_score:
        my_best_align = "." * i + s2
        my_best_score = z

print(my_best_align)
print(s1)
print("Best score:", my_best_score)

csvwrite = csv.writer(seq_output)
csvwrite.writerow([my_best_align, my_best_score])
csvwrite.writerow([s1, None])
