#!/usr/bin/env bash

function ask {
	echo " Can you properly guess the amount of files in the current directory?"
	read amount
   files=$(ls -l|wc -l)
}

   ask

   while [[ $amount -ne $files ]]; do
	if [[ $amount -lt $files ]];
	then 
	   echo "Sorry try again, your answer is less than the correct number."
	else
	   echo "Sorry try again, your answer is greater than the correct number."
        fi
	ask
done

echo "Congratulations! You have the correct answer." 


