#!/bin/bash

echo "Please input your vowel"

read VOWEL

length=${#VOWEL}

if [ $length -gt 1 ]; then
	echo "A single vowel please!"
else
	echo "$VOWEL;" >> "$LANG/Rules/Vowels.txt"
fi
