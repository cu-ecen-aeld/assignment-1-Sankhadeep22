#!/bin/bash

#check if both arguments are provided
if [[ -z "$1" || -z "$2" ]]
then
    echo "Error: Missing Arguments"
    exit 1
fi

#ensure the provided path is a valid directory
if [[ ! -d "$1" ]]
then
    echo "Directory does not exist"
    exit 1
fi

filesdir=$1
searchstr=$2

#count all the files recursively inside the directory
files=$(find "$filesdir" -type f | wc -l)

#count matching lines containing the search string
lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are ${files} and the number of matching lines are ${lines}"
