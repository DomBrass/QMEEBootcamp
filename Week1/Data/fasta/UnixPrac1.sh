#!/bin/bash

#1. Counts the lines in each file.

find -type f -name "*.fasta" | while read FILE; do 
echo "The file $FILE has $(wc -l < $FILE) lines." 
done 
echo

#2. Prints everything from the second line of the E. coli genome.

echo "The second line of E.coli.fasta is: $(sed '2q;d' E.coli.fasta)" 
echo 

#3. Counts the sequence length of the genome.

echo "The sequence length of E. coli's genome is $(sed -n '1!p' E.coli.fasta|wc -c)"
echo

#4. Counts the matches of a partilcular sequence.

echo "The string 'ATGC' occurs $(tr -d '\n' < E.coli.fasta | grep -o "ATGC" | wc -l) times."
echo
#5. Computes the AT/GC ratio.

num_A=$(grep -o "A" E.coli.fasta | wc -l)
num_T=$(grep -o "T" E.coli.fasta | wc -l)
num_G=$(grep -o "G" E.coli.fasta | wc -l)
num_C=$(grep -o "C" E.coli.fasta | wc -l)

num_AT=$num_A+$num_T
num_GC=$num_G+$num_C

rat=$(awk -v num_AT=$num_AT num_GC=$num_GC 'BEGIN { print (num_AT/num_GC)}')
echo "$rat"
echo