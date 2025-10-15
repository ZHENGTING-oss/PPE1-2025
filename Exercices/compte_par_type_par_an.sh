#!/usr/bin/bash

DATADIR=$1
TYPE=$2
if [ $# -ne 2 ]
then
    echo "le nombre des arguments incorrects, il en faut 2:DATADIR et TYPE"
    exit 1
fi

if [ ! -d $DATADIR/2016 ] || [ ! -d $DATADIR/2017 ] || [ ! -d $DATADIR/2018 ]
then
    echo "$DATADIR n'est pas probalement le bon dossier"
fi

A=$(bash ./compte_par_type.sh $DATADIR 2016 $TYPE)
B=$(bash ./compte_par_type.sh $DATADIR 2017 $TYPE)
C=$(bash ./compte_par_type.sh $DATADIR 2018 $TYPE)

echo "Nombre de $TYPE en 2016:
${A};
Nombre de $TYPE en 2017:
${B};
Nombre de $TYPE en 2018:
${C}"
