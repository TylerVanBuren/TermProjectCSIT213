#!/bin/bash

echo "Type in the filename of your Swadesh List"
read SWADESH
echo "Type in the minimum syllable count"
read MIN
echo "Type in the maximum syllable count"
read MAX

./swadeshIntake.sh $SWADESH $MIN $MAX
