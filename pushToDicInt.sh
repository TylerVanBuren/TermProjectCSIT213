#This script serves as a user interface for manually pushing a word to the dictionary

takeinpt () {
echo "Enter the name of the word:"
read WORD
echo "Enter the part of speech of the word"
read PART
echo "Enter the word's definition"
read DEF
echo "Enter any Tags, separate them with spaces"
read TAGS
}

takeinpt
./pushToDic.sh $WORD "${TAGS[@]} $PART" "$DEF"
