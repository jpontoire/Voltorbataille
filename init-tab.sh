#!/bin/bash

chr() {
  [ "$1" -lt 256 ] || return 1
  echo $(printf "\\$(printf '%03o' "$1")")
}

function init-tab {
	n=5
	for i in $(seq 1 $n)
	do
		for j in $(seq 1 $n)
		do
			lettre=$(printf "\\$(printf '%03o' "$(($j+64))")")
			val=$((RANDOM%4))
			touch "$lettre$i.sh"
			# echo "$val"
		done
	done
}

init-tab


# chr $(($j+64))
