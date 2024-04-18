#!/bin/bash
#This script pushes a syllable rule

CONSTRUCT=$1
ILLEGAL="False"
#Grab our rules
mapfile -t rules <<< "$(cut -d ";" -f 1 "$LANG/Rules/SyllableRules.txt")"

length=${#CONSTRUCT}
for ((i=0; i< length; i++));
do
	char="${CONSTRUCT:i:1}"
	if [[ ! $char =~ [C*V*] ]]; then
		ILLEGAL="True"
	fi
done

if [ $ILLEGAL == "True" ]; then
	echo "Illegal Construct!"
else
	echo "$CONSTRUCT;" >> "$LANG/Rules/SyllableRules.txt"
fi
