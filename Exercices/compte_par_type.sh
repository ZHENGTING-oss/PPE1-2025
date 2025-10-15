#!/usr/bin/bash



DATADIR=$1
ANNEE=$2
TYPE=$3


if [ $# -ne 3 ]
then
    echo "nombre d'arguments incorrect, il en faut 3"
    exit
fi

if [ ! -d $DATADIR/2016 ] || [ ! -d $DATADIR/2017 ] || [ ! -d $DATADIR/2018 ]
then
    echo "$DATADIR n'est pas probalement le bon dossier"
fi

# Compter le nombre de lignes contenant le type demandé
cd $DATADIR
#echo "Nombre de $TYPE en $ANNEE:"
cat ${ANNEE}/*.ann | grep "$TYPE" | wc -l
