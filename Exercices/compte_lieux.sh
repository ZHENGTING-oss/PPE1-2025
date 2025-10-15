#!/usr/bin/bash

DATADIR=$1
Annee=$2
Mois=$3
TOPN=$4

if [ $# -ne 4 ]
then
    echo "nombre d'arguments incorrect, il en faut 4"
    exit
fi

if [ ! -d $DATADIR ]
then
    echo "$DATADIR n'est pas un dossier"
    exit
fi

if [ ! -d $DATADIR/2016 ] || [ ! -d $DATADIR/2017 ] || [ ! -d $DATADIR/2018 ]
then
    echo "$DATADIR n'est pas probalement le bon dossier"
fi

#if [ -z $Annee  ] && [ -z $Mois ]
#then
#    echo "Veuillez entrer l'annee et le mois"
#    exit 1
#fi

#if [ -z $Annee  ]
#then
 #   echo "Veuillez entrer l'annee"
  #  exit 1
#fi

#if [ -z $Mois  ]
#then
#    echo "Veuillez entrer le mois"
 #   exit 1
#fi


#Afficher les arguments:
echo "Annee: $Annee"
echo "Mois: $Mois"
cd $DATADIR

NBlieux=$(cat ${Annee}/${Annee}_${Mois}_* | grep Location | cut -f3 | sort | uniq -c | sort -n | tail -n $TOPN)

#sort -n : 升序, sort -nr: 降序

echo -e "Les lieux les plus cités: \n$NBlieux"
