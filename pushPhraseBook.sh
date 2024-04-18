#!/bin/bash
#This script pushes a phrase to a phrase book

PHRASE=$1
DIR="$LANG/PhraseBook"
DICDIR="$LANG/Dictionary"

#Format the word so Obsidian Markdown viewer can follow the hyperlink
format () {
	echo "[$1 ](Dictionary/$1.md)"
}

for word in $PHRASE
do
	check=$(find $LANG/Dictionary/"${word}.md")
	if [ check = "" ]; then
		echo "Not found"
	fi
	if [ check != "" ]; then
		#What a mess
		#Sed grabs the 5th line, getting the first definition
		#then cut grabs the actual definitioni
		FORMATTED_PHRASE+=$(format ${word})
		DEF+=" "$(sed -n 5p $LANG/Dictionary/$word.md | cut -d " " -f 2)
	fi
done
	echo $FORMATTED_PHRASE > "${DIR}/${PHRASE}.md"
	echo $DEF >> "${DIR}/${PHRASE}.md"
