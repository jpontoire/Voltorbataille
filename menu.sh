#Fonction pour choisir la difficulté
Chosir_la_difficulte (){
while true; do
echo "1. Facile"
echo "2. Moyen"
echo "3. Difficile"
echo "Saisir 'non' pour annuler"
read -p "Sélectionnez une difficulté: " choix
case $choix in
 1) echo "3"; break ;;  # grille 5x5 avec 3 mines
 2) echo "4"; break ;;
 3) echo "5"; break ;;
 non) echo "partie annulée"; break ;;
esac
done
}

#Chosir_la_difficulte

#Fonction pour assigner un nom
saisir_nom() {
	read -p "Entrez votre nom: " nom
	echo $nom
}
#nom=$(saisir_nom)
#echo "Nom assigné: $nom"
