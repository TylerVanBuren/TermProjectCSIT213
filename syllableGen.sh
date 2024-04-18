#!/bin/bash
#This script generates a syllable based on user defined rules
LANG=$1
LENGTH=$2

#Grab our rules
mapfile -t rules <<< "$(cut -d ";" -f 1 "$LANG/Rules/SyllableRules.txt")"
mapfile -t consonants <<< "$(cut -d ";" -f 1 "$LANG/Rules/Consonants.txt")"
mapfile -t vowels <<< "$(cut -d ";" -f 1 "$LANG/Rules/Vowels.txt")"

for((i = 0; i < LENGTH; i++));
do
	string="${string}${rules[RANDOM%${#rules[@]}]}"
done
for((i = 0; i < ${#string}; i++));
do
	if [ ${string:i:1} = "C" ]; then
		word="${word}${consonants[RANDOM%${#consonants[@]}]}"
	fi
	if [ ${string:i:1} = "V" ]; then
		word="${word}${vowels[RANDOM%${#vowels[@]}]}"
	fi

done
echo ${word^}
