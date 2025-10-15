#!usr/bin/bash
# ajouter un shebang
CHEMIN=$1
echo "argument donné:$1"
echo "Nombre de lieux en 2016:"
cat $CHEMIN/2016/* | grep Location | wc -l
echo "Nombre de lieux en 2017:"
cat $CHEMIN/2017/* | grep Location | wc -l
echo "Nombre de lieux en 2018:"
cat $CHEMIN/2018/* | grep Location | wc -l
