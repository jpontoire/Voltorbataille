#!/bin/bash

function init-tab {
	n=5
	voltorbe=0
	for i in $(seq 1 $n)
	do
		for j in $(seq 1 $n)
		do
			lettre=$(printf "\\$(printf '%03o' "$(($j+64))")")
			val=$(($((RANDOM%3))+1))
			echo "$val"
			touch "coordo/$lettre$i.sh"
			echo "$val" > "coordo/$lettre$i.sh"
		done
	done
}







init-tab


# chr $(($j+64))
#if [ $val -eq 0 ]
#then
#	voltorbe=$(($voltorbe+1))
#fi
#if [ $voltorbe -gt $1 ]
#then
#	while [ $val -eq 0 ]
#	do
#		val=$((RANDOM%4))
#	done
#fi
