#Fonction pour choisir la difficulté

Chosir_la_difficulte (){
while true; do
echo "1. Facile"
echo "2. Moyen"
echo "3. Difficile"
echo "Saisir 'Non' pour annuler"
read -p "Sélectionnez une difficulté: " choix
case $choix in
 1) echo "5 5 3"; break ;;  # grille 5x5 avec 3 mines
 2) echo "5 5 4"; break ;;
 3) echo "5 5 5"; break ;;
 non) echo "partie annulée"
esac
done
}

Chosir_la_difficulte
