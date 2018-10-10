#Author: Dominic
#Script: CompileLatex.sh
#Desc: Compiles latex documents.
#saves the output to a .csv files
#Arguements: 1 -> *.tex 1 -> *.bib.
#Date: Oct 2018

pdflatex $1.tex
pdflatex $1.tex
bibtex $1
pdflatex $1.tex
pdflatex $1.tex
evince $1.pdf &

## Cleanup
rm *~
rm *.aux
rm *.dvi
rm *.log
rm *.nav
rm *.out
rm *.snm
rm *.toc