#!/bin/bash
#Interface for the mutation script

echo "What is the name of the daughter language?"
read DAUGHTER
./popNewLang.sh $DAUGHTER
echo "Enter the string to be replaced"
read LOSS
echo "Enter the string to substitute in"
read REPLACE
./mutate.sh $LOSS $REPLACE $DAUGHTER
