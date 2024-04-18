#!/bin/bash
#TO DO: check for illegal clusters and other nonsense
#This script is for populating a language using a tsv Swadesh List

SWADESH=$1

# Grab our rules
mapfile -t swadesh < <(cut -f 1 "$LANG/Swadesh/$SWADESH")

for word in "${swadesh[@]}"
do
    #Randomly gen the syllable count
    NUM=$(($2 + $RANDOM % $3))
    syllable=$(./syllableGen.sh $LANG $NUM)
    ./pushToDic.sh "$syllable" " " "$word" "$LANG"
    echo $syllable
done
