#!/bin/bash

function affichage_ligne(
	echo -n "+"
	for i in $(seq 1 4)
	do
		echo -n "---+"
	done
	echo "---+"
)

affichage_ligne 
for  i in $(seq 1 5) 
do 
	echo -n "|"
	for j in $(seq 1 4)
	do
		echo -n " O |"
	done
	echo  " O |"
	affichage_ligne
done	
