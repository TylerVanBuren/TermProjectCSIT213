#!/bin/bash
#This script allows the user to push consonants

echo "Please input your consonant"

read CONSONANT

length=${#CONSONANT}

if [ $length -gt 1 ]; then
	echo "A single consonant please!"
else
	echo "$CONSONANT;" >> "$LANG/Rules/Consonants.txt"
fi
