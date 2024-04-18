#!/bin/bash
#This script interaces with the pushConsonant script

echo "How many Consonants are you pushing?"
read NUM


for((i = 0; i < $NUM; i++)) 
do
	echo "Enter the Consonant"
	read CONSONANT
	while [ ${#CONSONANT} != 1 ]
	do
		echo "One consonant at a time please!"
		read CONSONANT
	done
	./pushConsonant.sh $CONSONANT
done
