#!/bin/bash

function affichage_ligne(
        echo -n "+"
        for i in $(seq 1 $(("$1"-1)))
        do
                echo -n "---+"
        done
        echo "---+"
)

function chercher_case(
        lettre=$(printf "\\$(printf '%03o' "$(($2+64))")")
        case=$(cat "coordo/$lettre$1.sh")
	if [ "$case" -le 0 ]
	then
		echo "*"
        else
		echo "$case"
	fi
)

function affichage(
        affichage_ligne "$1"
        for  i in $(seq 1 "$1") 
        do 
                echo -n "|"
                for j in $(seq 1 $(("$1"-1)))
                do
                        case=$(chercher_case "$i" "$j")
                        echo -n " $case |"
                done

                case=$(chercher_case "$i" "$1")
                echo " $case |"
                affichage_ligne "$1"
        done    
)


affichage "$1"
