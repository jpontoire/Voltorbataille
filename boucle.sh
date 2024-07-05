#!/bin/bash

source ./affichage.sh
source ./init-tab.sh

function boucle {
	init-tab
	voltorbes=$1
	add_voltorbes $voltorbes
	affichage 5
}

boucle $1
