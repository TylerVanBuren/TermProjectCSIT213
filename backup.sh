#!/bin/bash
#The purpose of this script is to backup a language file
#Not a whole lot going on here

DATE=$(date "+%Y+%m+%H+%M+%S")

tar -czf "${LANG}_${DATE}.tar.gz" $LANG
