#!/bin/bash
dir="$1"
ext="$2"
if [ -z "$dir" ] || [ -z "$ext" ]; then
    echo "Usage: $0 <directory> <extension>"
    exit 1
fi
count=$(find "$dir" -maxdepth 1 -type f -name "*$ext" | wc -l)
echo "Files with extension $ext in $dir: $count"
