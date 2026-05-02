#!/bin/bash

#Custom is command

DIR="${1:-.}"
echo "Directory: $DIR"

for FILE in "$DIR"/* 2./dev/null
do 
    if [ -e "$FILE" ]; then 
         # permission  
       	R="-" ;	[ -r "$FILE" ] && R="r"
	w="-" ;	[ -w "$FILE" ] && W="w"
       	X="-" ;	[ -X "$FILE" ] && X="x"

       	# Type
       	if [ -d	"$FILE"	]; THEN	
       	   T="DIR"
        else
       	   T="FILE"
        fi 
       	
       	echo "$R$W$X $T	$(basename "$FILE")"
        fi 
done 
