#!/bin/bash

source ./affichage.sh
source ./init-tab.sh
source ./maj_etat_de_jeu.sh

function boucle {
	init-tab
	voltorbes=$1
	add_voltorbes $voltorbes
	affichage 5
	flag="true"
	while [ $flag = "true" ]
	do
		echo "Veuillez choisir une case"
		read cellule
		#echo "$cellule"
		statut=$(maj-etat $cellule)
		if [ $statut -eq 0 ]
		then
			echo "Perdu !"
			flag="false"
		else
			affichage 5
		fi
	done
}

boucle $1
