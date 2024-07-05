# Fonction pour actualiser le score
actualiser_score() {
score=$1
points=$2
if [ $score -eq 0 ]; then
nouveau_score=$((score + points))
else
nouveau_score=$((score * points))
fi
echo $nouveau_score
}
actualiser_score
