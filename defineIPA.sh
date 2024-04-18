#!/bin/bash

#This script is to map Common Roman characters to IPA phonemes
#Still in development
#Probably won't finish this by submission time:

LANG=$1
ROM=$2
IPA=$3

echo $ROM:$IPA >> $1/Rules/IPA.txt
