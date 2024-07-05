#Fonction afficher centrer
afficher_centrer (){
cols=$(tput cols)
mytext=$1
printf "%*s\n" $(((${#mytext}+$cols)/2)) "$mytext"
}
#Fonction pour choisir la difficulté
Chosir_la_difficulte (){
while true; do
afficher_centrer "1. Facile"
afficher_centrer "2. Moyen"
afficher_centrer "3. Difficile"
afficher_centrer "Saisir 'Non' pour annuler"
afficher_centrer "Sélectionnez une difficulté:"
read choix
case $choix in
 1) afficher_centrer "3"; break ;;  # grille 5x5 avec 3 mines
 2) afficher_centrer "4"; break ;;
 3) afficher_centrer "5"; break ;;
 non) afficher_centrer "partie annulée"
esac
done
}


Chosir_la_difficulte

#Fonction pour assigner un nom
saisir_nom() {
read -p "Entrez votre nom: " nom
afficher_centrer $nom
}
#nom=$(saisir_nom)
