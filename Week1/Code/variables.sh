#!/bin/bash
#Shows the use of variables
MyVar='some string'
echo 'the current value of the variable is ' $MyVar
echo 'Please enter a new string'
read MyVar
echo 'the current value of the variable is ' $MyVar
echo 'Enter two numbers separated by space(s)'
read a b
echo 'you entered' $a ' and '$b$'. Their sum is:'
mysum=$(($a + $b))
echo $mysum