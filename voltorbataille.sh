#Fonction pour choisir la difficulté

echo "1. Facile"
echo "2. Moyen"
echo "3. Difficile"
read  "Sélectionnez une difficulté: " choix
case $choix in
 1) echo "5 5 3" ;;  # grille 5x5 avec 3 mines
 2) echo "5 5 4" ;;
 3) echo "5 5 5" ;;
