#!/bin/bash

source ./affichage.sh
source ./init-tab.sh
source ./maj_etat_de_jeu.sh
source ./actualise_score.sh
source ./affichageScoreActuel.sh
source ./etatfinal.sh

function boucle {
	init-tab
	voltorbes=$1
	add_voltorbes $voltorbes
	affichage 5
	score=0
	affichage_score $score
	flag="true"
	while [ $flag = "true" ]
	do
		echo "Veuillez choisir une case"
		read cellule
		#echo "$cellule"
		if [ -e coordo/$cellule.sh ] && [ $(cat coordo/$cellule.sh) -le 0 ]
		then
			statut=$(maj-etat $cellule)
			if [ $statut -eq 0 ]
			then
				echo "Perdu !"
				flag="false"
			else
				score=$(actualiser_score $score $statut)
				affichage 5
				affichage_score $score
			fi
			fin=$(verif)
			echo $fin
			if [ $fin -eq 1 ]
			then
				echo "Vous avez gagné"
				flag="false"
			fi
		fi
	done
}

boucle $1
