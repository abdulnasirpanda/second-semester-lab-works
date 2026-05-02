#!/bin/bash
dir="${1:-.}"
for file in "$dir"/*
do
    if [ -e "$file" ]; then
        perms=""
        [ -r "$file" ] && perms="${perms}r" || perms="${perms}-"
        [ -w "$file" ] && perms="${perms}w" || perms="${perms}-"
        [ -x "$file" ] && perms="${perms}x" || perms="${perms}-"
        echo "$perms $(basename "$file")"
    fi
done
