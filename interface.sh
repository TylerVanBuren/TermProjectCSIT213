#!/bin/bash
#This file is an interface for handling a suite of scripts designed to smooth the process of conlanging.

#Take the language from the user

echo "What language do you want to work on today?"
read inptLANG
if [ ! -d ./$inptLANG ]; then
	echo "Directory doesn't exist, populating new language..."
	sleep 2
	./popNewLang.sh $inptLANG
fi


#Set the the current LANG as an environment variable
export LANG=$inptLANG
export CHOICE=1

#Main interface
main () {
echo "Hi, what do you want to do today?"
echo "Dictionary - 1."
echo "Phonotactics -2."
echo "PhraseBook - 3"
echo "Mutate Language - 4."
echo "Quit - 0."
read userInput

case $userInput in

	1)
		dictionary
		;;
	2)
		phono
		;;
	3)
		phrase
		;;
	4)
		mutate
		;;
	0)
		CHOICE=0
	esac

}
dictionary () {
	echo "What would you like to do in the dictionary?"
	echo "Push a word - 1."
	echo "Query a word - 2."
	echo "Upload from Swadesh - 3."
	echo "Push an inflection rule - 4."
	echo "View word inflections - 5."
	read userInput

case $userInput in

	1)
		./pushToDicInt.sh
		;;
	2)
		./queryDicInt.sh
		;;
	3)
		./swadeshInt.sh
		;;
	4)
		./defineRule.sh
		;;
	5)
		./inflectInt.sh
		;;
	esac

	
}
phono () {
	echo "What do you need to do concerning phonotactics?"
	echo "Push a Word Structure - 1."
	echo "Push a Consonant(s) - 2. Not Yet Implemented"
	echo "Push a Vowel(s) - 3. Not Yet Implemented"
	echo "Push an illegal cluster - 4. Not yet implemented"
	read userInput

case $userInput in

	1)
		./pushSyllableRuleInt.sh
		;;
	2)
		./pushConsonant.sh
		;;
	3)
		./pushVowel.sh
		;;
	4)
		./pushCluster.sh
		;;
	esac


}
phrase () {
	echo "What do you need to do with the Phrase Book?"
	echo "Push a Phrase - 1."

read userInput
case $userInput in

	1)
		./pushPhraseBookInt.sh
		;;
	esac


}
mutate () {
	./mutateInt.sh
}

while [ $CHOICE -ne 0 ]; do
	main
done

