#/bin/bash
#This script queries the dictionary
#TO DO split this into two scripts that query based on definition and word

DEF_FRAG=$1

cd ./$LANG/Dictionary

#Need parentheses to force results to be an array so we can check if its empty later
RESULTS=($(find *.md -exec grep -lr $DEF_FRAG {} \;))

#If the array has 0 elements then print we found nothing
if [ ${#RESULTS[@]} -eq 0 ]; then
	echo "Not Found"
fi

for found in ${RESULTS[@]}
do
	DEF+=" "$(sed -n 5p $found | cut -d " " -f 2) 
	echo "$found $DEF"
	DEF=" "
done

cd ../
