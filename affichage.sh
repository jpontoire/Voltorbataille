#!/bin/bash

echo "+---+---+---+---+---+"
for  i in $(seq 1 5) 
do 
	echo -n "|"
	for j in $(seq 1 4)
	do
		echo -n " O |"
	done
	echo  " O |"
	echo "+---+---+---+---+---+"
done	
