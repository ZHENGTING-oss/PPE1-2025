#!/usr/bin/bash



CHEMIN=/home/zhengting/Desktop/Plurital/PPE1/Exercice1/ann
ANNEE="$1"
TYPE="$2"


if [ -z $ANNEE  ] && [ -z $TYPE ]
then
    echo "Veuillez entrer l'annee et le type"
    exit 1
fi

if [ -z $ANNEE  ]
then
    echo "Veuillez entrer l'annee"
    exit 1
fi

if [ -z $TYPE  ]
then
    echo "Veuillez entrer le type"
    exit 1
fi

# Compter le nombre de lignes contenant le type demandé
echo "Nombre de $TYPE en $ANNEE:"
cat $CHEMIN/$ANNEE/* | grep "$TYPE" | wc -l
