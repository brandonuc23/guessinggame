#!/usr/bin/env bash
# File: guessinggame.sh

#functions###################################################
function getfilecount () {
 file_count=$(ls -L | wc -l)
 echo $file_count
}
###############################################################

#main program##################################################
FC=$(getfilecount) 
guess=0

while (( $FC != $guess )); do
	read -p "How many files are in the current directory? " guess
	if (( guess < $? )); then
		echo "Too High..."
	elif (( guess > $? )); then
		echo "To Low..."
	else
	        echo "Congratulations! You entered the correct number of files."
		break
        fi
done
###############################################################
