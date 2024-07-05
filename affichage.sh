#!/bin/bash

function affichage_ligne(
	echo -n "+"
	for i in $(seq 1 $(("$1"-1)))
	do
		echo -n "---+"
	done
	echo "---+"
)

affichage_ligne "$1"
for  i in $(seq 1 "$1") 
do 
	echo -n "|"
	for j in $(seq 1 $(("$1"-1)))
	do
		echo -n " O |"
	done
	echo  " O |"
	affichage_ligne "$1"
done	
