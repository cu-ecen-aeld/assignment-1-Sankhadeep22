#!/bin/bash

#check if both arguments are provided
if [[ -z "$1" || -z "$2" ]]
then 
    echo "Error: Missing Arguments"
    exit 1
fi

writefile=$1
writestr=$2

#create parent directory if it does not exist 
mkdir -p "$(dirname "$writefile")"

if [ $? -ne 0 ]
then
    echo "Error: File creation unsuccessful"
    exit 1
fi

#write the provided string to the targeted file
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]
then
    echo "Error: Could not write to file"
    exit 1
fi
