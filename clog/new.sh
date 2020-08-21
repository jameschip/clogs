#!/bin/bash

DT=$(date)
IFS=''
INDEX_FILE=index

echo -n "Title of blog post to create: "
read TITLE

FILE_COUNT=$(( $(ls | grep -e '[0-9+]' | wc -l) + 1 ))

printf "Entry created : %s\n" $FILE_COUNT

touch $FILE_COUNT

printf "\e[2m%s\e[0m\n" $DT >> $FILE_COUNT
printf "\e[4m%s\e[0m\n\n" $TITLE >> $FILE_COUNT
printf "\t%s:\t%s\n" $FILE_COUNT $TITLE >> index

