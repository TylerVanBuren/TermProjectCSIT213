#!/bin/bash

#This script takes a dictionary of words written in markdown files and mutates them according to a user defined regex pattern.

#A function that mutates the words in a given dictionary
mutate () {
	INPUT=$(ls $4)
	for file in $INPUT
	do
		#Create the new filename with sed
		newName=$(sed "s/$2/$3/g" <<< "${file}" )
		cp $4/$file $1/$newName
		#populate the new file
		sed -i "4s/$2/$3/g" "$1/$newName"
	done
}

DIC="$LANG/Dictionary"
LOSS=$1
REPLACE=$2
newDIC="$3/Dictionary"

mkdir -p $newDIC

#find all of the words with the pattern to be replaced.
mutate $newDIC $LOSS $REPLACE $DIC
