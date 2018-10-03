#!/bin/bash

#1. Counts the lines in each file.

find -type f -name "*.fasta" | while read FILE; 
do
    $Numlines='wc -l < $FILE'
    echo "The file $FILE has $NumLines lines."
done 

#2. Prints everything from the second line of the E. coli genome.

#3. Counts the sequence length of the genome.

#4. Counts the matches of a partilcular sequence.

#5. Computes the AT/GC ratio.
