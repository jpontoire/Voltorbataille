#!/bin/bash
. ./menu.sh
partie=1
while [ "$partie" -eq 1 ]
do
	nom=$(saisir_nom)
	Choisir_la_difficulte
	./boucle.sh $(cat "nb_voltorbe")
done 
