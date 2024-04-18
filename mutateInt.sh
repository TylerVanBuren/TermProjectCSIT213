#!/bin/bash
#Interface for the mutation script

echo "How many mutations?"
read NUM
echo "What is the name of the daughter language?"
read DAUGHTER
./popNewLang.sh $DAUGHTER
for (( i = 0; i < NUM; i++ ));
do
	echo "Enter the string to be replaced"
	read LOSS
	echo "Enter the string to substitute in"
	read REPLACE
	./mutate.sh $LOSS $REPLACE $DAUGHTER
done
