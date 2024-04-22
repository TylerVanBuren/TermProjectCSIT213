
#This script interaces with the pushConsonant script

echo "How many Clusters are you pushing?"
read NUM


for((i = 0; i < $NUM; i++))
do
	echo "Enter the Cluster"
	read CLUSTER
    echo "Enter the replacement"
	read REPLACEMENT

	./pushCluster.sh $CLUSTER $REPLACEMENT

done
