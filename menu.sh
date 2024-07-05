#Fonction afficher centrer
afficher_centrer (){
cols=$(tput cols)
mytext=$1
printf "%*s\n" $(((${#mytext}+$cols)/2)) "$mytext"
}
#Fonction pour choisir la difficulté
Choisir_la_difficulte (){
while true; do
afficher_centrer "1. Facile"
afficher_centrer "2. Moyen"
afficher_centrer "3. Difficile"
afficher_centrer "Saisir 'Non' pour annuler"
afficher_centrer "Sélectionnez une difficulté:"
read choix
case $choix in
 1) echo "3">nb_voltorbe; break ;;  # grille 5x5 avec 3 mines
 2) echo "4">nb_voltorbe; break ;;
 3) echo "5">nb_voltorbe; break ;;
 non) afficher_centrer "partie annulée"
esac
done
}


#Choisir_la_difficulte

#Fonction pour assigner un nom
saisir_nom() {
read -p "Entrez votre nom: " nom
#afficher_centrer $nom
echo "$nom"
}
#nom=$(saisir_nom)
