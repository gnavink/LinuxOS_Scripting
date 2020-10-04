#! /bin/bash

# head --- print first n lines
#
# usage: head N file

count=$1

sed "${count}q" "$2"       #Prints the count lines and quits
#sed -n "${count}q" "$2"   #Can you say what will be the output ???
