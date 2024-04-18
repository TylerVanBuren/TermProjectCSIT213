#!/bin/bash
#This script allows the user to push illegal cluster rules

#TODO Check if the cluster is composed entirely of legal symbols
#TODO Check if the cluster is aleady present with a rule(to prevent conflicting rules causing unexepcted behavior)

echo "Please input your cluster"

read CLUSTER

echo "Please input its replacement"

read REPLACEMENT

echo "$CLUSTER;$REPLACEMENT" >> "$LANG/Rules/IllegalClusters.txt"

