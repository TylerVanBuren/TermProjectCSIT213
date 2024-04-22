#!/bin/bash
#TO DO: check for illegal clusters and other nonsense
#This script is for populating a language using a tsv Premade Dictionary, including word, definition, and tags

DIC=$1

# Grab our rules


	mapfile -t word < <(cut -f 1 "./Dictionaries/$DIC")	
	mapfile -t definition < <(cut -f 2 "./Dictionaries/$DIC")	
	mapfile -t tags < <(cut -f 3 "./Dictionaries/$DIC")	
	for((i = 0; i < ${#word[@]}; i++))
	do
    	./pushToDic.sh "${word[i]}" "${tags[i]}" "${definition[i]}"
   	echo ${word[i]} ${definition[i]} ${tags[i]}
	done

