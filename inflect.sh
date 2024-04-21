#This is a script for inflecting roots of a con lang
#The root is provided at $1 and the categories after
#Then we use sed to inflect the root based off of our rules

ROOT=$1
TAGS=$(sed -n 2p $LANG/Dictionary/$ROOT.md)

for tag in $TAGS
do

#Check if the tag has a rule
if grep -q $tag "$LANG/Rules/InflectRules.txt"; then
#Get the rule
mapfile -t rules <<< "$(grep $tag "$LANG/Rules/InflectRules.txt")"

for line in "${rules[@]}"
do

	SLICE=$(cut  -d ":" -f1 <<< "$line")
	REG=$(cut  -d ":" -f2 <<< "$line")
	MARK=$(cut  -d ":" -f4 <<< "$line")
	GRAMMATIC=$(cut  -d ":" -f5 <<< "$line")	
	INFLECTED=$(echo $ROOT | sed -E "s/$REG/$SLICE/g")
	echo $INFLECTED $GRAMMATIC $MARK
	
done

fi

done
