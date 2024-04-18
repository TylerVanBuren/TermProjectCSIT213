#!/bin/bash
#This checks for illegal clusters and then echos "I found the cluster
#One day I'll have a script that removes them if this one's chatty

word=$1

#Load in our clusters
mapfile -t clusters <<< "$(cut -d ";" -f 1 "$LANG/Rules/IllegalClusters.txt")"

#loop and see if the cluster is contained within the word
for i in ${clusters[@]};
do
	echo "$i"
	if [[ "$word" == *"$i"* ]]; then
		echo "I found the cluster!"
	fi
done
