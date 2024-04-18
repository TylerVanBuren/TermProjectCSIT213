#!/bin/bash
#This scripts populates a new language directory

NEW=$1

#Bracket expansion is so cool and I've always wanted to use it in a project
mkdir -p $NEW/{Dictionary/,PhraseBook/,Rules/,Swadesh/}
touch $NEW/Rules/{Consonants,IllegalClusters,InflectRules,SyllableRules,Vowels}.txt

