#!/bin/bash

#Task 2: print all arguments passed to the script

echo "Total arguments: $#"
echo "Arguments:"

COUNT=1
for ARG in "$@"
do 
    echo " Argument $COUNT: $ARG"
    ((COUNT++))
done 
