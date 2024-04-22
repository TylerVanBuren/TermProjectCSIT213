#!/bin/bash
#This script interaces with the pushConsonant script

echo "How many Vowels are you pushing?"
read NUM


for((i = 0; i < $NUM; i++))
do
	echo "Enter the Vowel"
	read VOWEL
	while [ ${#VOWEL} != 1 ]
	do
		echo "One vowel at a time please!"
		read VOWEL
	done
	./pushVowel.sh $VOWEL
done
