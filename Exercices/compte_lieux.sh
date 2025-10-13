#!/usr/bin/bash

CHEMIN=/home/zhengting/Desktop/Plurital/PPE1/Exercice1/ann

Annee=$1
Mois=$2

if [ -z $Annee  ] && [ -z $Mois ]
then
    echo "Veuillez entrer l'annee et le mois"
    exit 1
fi

if [ -z $Annee  ]
then
    echo "Veuillez entrer l'annee"
    exit 1
fi

if [ -z $Mois  ]
then
    echo "Veuillez entrer le mois"
    exit 1
fi

#Afficher les arguments:
echo "Annee: $Annee"
echo "Mois: $Mois"

NBlieux=$(cat "$CHEMIN"/$Annee/$Annee_$Mois_* | grep Location | cut -f3 | sort | uniq -c | sort -nr| head -n 10)

echo -e "Les lieux les plus cités: \n$NBlieux"
