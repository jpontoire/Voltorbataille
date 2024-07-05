#!/bin/bash

function affichage_ligne(
        echo -n -e "\E[31m+\E[0m"
        for i in $(seq 1 $(("$1"-1)))
        do
                echo -n -e "\E[31m---+\E[0m"
        done
        echo -e "\E[31m---+\E[0m"
)

function chercher_case(
        lettre=$(printf "\\$(printf '%03o' "$(($2+64))")")
        case=$(cat "coordo/$lettre$1.sh")
	if [ "$case" -le 0 ]
	then
		echo -e "\E[32m*\E[0m"
        else
		echo -e "\E[34m$case\E[0m"
	fi
)

function info_ligne(
	somme=0
	voltorbe=0
	for i in  $(seq 1 "$2")
	do
		lettre=$(printf "\\$(printf '%03o' "$(($i+64))")")
	        case=$(cat "coordo/$lettre$1.sh")
		case="${case#-}"
		if [ "$case" -eq 0 ]
		then
			voltorbe=$(("$voltorbe"+1))
		else
			somme=$(("$somme" + "$case"))
		fi
	done
	echo -e "\E[32mSomme: $somme\E[0m/\E[31mVoltorbe: $voltorbe\E[0m/"
)

function info_colonne_somme(
        somme=0
        for i in  $(seq 1 "$1")
        do
                case=$(cat "coordo/$2$i.sh")
                case="${case#-}"
                somme=$(("$somme"+"$case"))
        done
	echo -n -e "\E[32mS:$somme|\E[0m"
)

function info_colonne_voltorbe(
        voltorbe=0
        for i in  $(seq 1 "$1")
        do
                case=$(cat "coordo/$2$i.sh")
		if [ "$case" -eq 0 ]
                then
                	voltorbe=$(("$voltorbe"+1))
		fi
        done
        echo -n -e "\E[31mV:$voltorbe|\E[0m"
)

function affichage(
        affichage_ligne "$1"
        for  i in $(seq 1 "$1") 
        do 
                echo -n -e "\E[31m|\E[0m"
                for j in $(seq 1 "$1")
                do
                        case=$(chercher_case "$i" "$j")
                        echo -n -e " $case \E[31m|\E[0m"
             	done
		info_ligne "$i" "$1"
                affichage_ligne "$1"
        done
	#for i in  $(seq 1 $(("$1"-1)))
        #do
                #echo -n "  S "
	#done
	#echo "  S"
	for i in $(seq 1 "$1")
	do
		info_colonne_somme "$1" $(printf "\\$(printf '%03o' "$(($i+64))")")   
	done
	echo
	for i in $(seq 1 "$1")
        do
                info_colonne_voltorbe "$1" $(printf "\\$(printf '%03o' "$(($i+64))")")   
        done
	echo
)

#affichage "$1"
