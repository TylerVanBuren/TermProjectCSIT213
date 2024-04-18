#/bin/bash

#This script takes in a word defined by a user, and pushes it to a markdown file.
#Argument 1 is the actual word
#Argument 2 is an array of tags
#Argument 3 is the actual definition
#TO DO: take an array of definitions

OUTPUT="$LANG/Dictionary/$1.md"

echo "---
tags:" > $OUTPUT
#loop for each tag
for word in $2
do
	echo "	"$word >> $OUTPUT
done
echo "---
# $1
1. $3" >> $OUTPUT
