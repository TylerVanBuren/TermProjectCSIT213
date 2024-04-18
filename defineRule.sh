#!/bin/bash
#This is a script that allows a user to define a custom inflection rule to convey meaning

echo "What part of speech does your inflection operate on?"
read PART
#TODO DATA VALIDATE THIS
echo "Please enter a valid regex expression"
read REGEX
echo "Enter the inflection"
read INFLECT
echo "What is the Grammatical Category?"
read GRAMMATIC
echo "What is the Mark?"
read MARK

echo "$INFLECT follows the $REGEX pattern and inflects $PART to convey $MARK:$GRAMMATIC"
echo "$INFLECT:$POSITION:$PART:$GRAMMATIC:$MARK" >> $LANG/Rules/InflectRules.txt

