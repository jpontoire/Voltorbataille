# Fonction pour actualiser le score
actualiser_score() {
score=$1
points=$2
echo $((score + points))
}
actualiser_score
