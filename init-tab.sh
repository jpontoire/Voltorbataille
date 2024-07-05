#!/bin/bash

function init-tab {
	n=5
	for i in $(seq 1 $n)
	do
		for j in $(seq 1 $n)
		do
			lettre=$(printf "\\$(printf '%03o' "$(($j+64))")")
			val=$(($((RANDOM%3))+1))
			#echo "$val"
			touch "coordo/$lettre$i.sh"
			echo "-$val" > "coordo/$lettre$i.sh"
		done
	done
}


function add_voltorbes {
	i=0
	while [ $i -lt $1 ]
	do
		x=$(printf "\\$(printf '%03o' "$(($(($((RANDOM%5))+1))+64))")")
		y=$(($((RANDOM%5))+1))
		#echo "$x $y"
		val=$(cat coordo/$x$y.sh)
		if [ $val -ne 0 ]
		then
			echo "0" > "coordo/$x$y.sh"
			i=$(($i+1))
		fi
	done
}




#init-tab
#add_voltorbes $1
