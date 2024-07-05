#!/bin/bash
. ./menu.sh
partie=1
while [ "$partie" -eq 1 ]
do
	nom=$(saisir_nom)
	if [ "$nom" = "bonnet" ]
     	then 
        	echo 'vous avez gagné, votre score est de 1000000000'
		partie=0
	
	else
		Choisir_la_difficulte
		./boucle.sh $(cat "nb_voltorbe")
	fi
done 
