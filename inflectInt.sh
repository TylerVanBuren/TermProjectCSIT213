#!/bin/bash
#The purpose of this is to interface between the user and the inflection module

echo "Enter your root word"
read ROOT

./inflect.sh $ROOT
