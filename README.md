# Conlang Script Suite
## About
This a project for the automation of creating constructed human languages using a suite of bash scripts. The primary purpose of this project is to meet grade milestone for CSIT-231. The secondary purpose of this project is to hit specific milestones in functionality of the suite.
## Rubric Milestones
* Condition Statement

* Loop
* Positional Parameters
* File I/0
* Functions with Parameters
* Use comments

## Functionality Milestones
* The capacity to define inflectional rules using regex
    * Status: 100%
* The ability to push words to a dictionary(database of markdown files) either from a file or user input
    * Status: 100%
* ~~Generating a dictionary of inflected variants from the root words~~
    ~~* Status 50%:~~
    * Decided to axe this before submission as I don't have much use for it right now. Just displaying the permutations as they're called is sufficient funcitionality for the time being
* The ability to assign phonotactic rules such as illegal clusters and ellisions
    * Status: 100%
* The capacity to mass mutate a language with regex. eg. Vowel shifting A->e or dropping vowels in certain clusters, with the intended effect of creating new dialects or descendant languages.
    * Status: 100%
* The ability to generate new words from user defined ~~CFG~~ Rules
    * Status 100%

# How to use
./interface.sh will summon an interface for using the script suite
When you are prompted for a language, the script will automatically create folder directories for you if the language doesn't exist.

