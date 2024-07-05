#!/bin/bash

#Fonction pour mettre à jour l'état de jeu

function maj-etat {
	case="coordo/$1.sh"
	val=$(cat $case)
	#echo "$val"
	if [ $val -eq 0 ]
	then
		echo "0"
	else
		echo $((-$val)) > $case
		echo "$((-$val))"
	fi
}

#maj-etat $1






maj_etat_de_jeu (){
etat_jeu=$1
coordonnees=$2
echo $etat_jeu
}

#maj_etat_de_jeu
