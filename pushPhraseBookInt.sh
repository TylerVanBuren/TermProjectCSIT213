#!/bin/bash
#This script grabs user input for the phrase pushPhraseBook
#TODO: Migrate the datachecking functionality of the actual script to this module

echo "Enter the phrase"
read PHRASE

./pushPhraseBook.sh "$PHRASE"
