#!usr/bin/bash
# ajouter un shebang
if [ $# -ne 1 ]
then
    echo "veuillez préciser le dossier où se trouvent les fichiers ann"
    exit
fi

DATADIR=$1
for ANNEE in 2016 2017 2018
do
    echo "Nombre de lieux en $ANNEE:"
    cd $DATADIR
    cat $DATADIR/$ANNEE/* | grep Location | wc -l
done
