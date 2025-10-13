#!/usr/bin/bash

TYPE="$1"
if [ -z $TYPE  ]
then
    echo "Veuillez entrer le type"
    exit 1
fi
bash compte_par_type.sh 2016 "$TYPE"
bash compte_par_type.sh 2017 "$TYPE"
bash compte_par_type.sh 2018 "$TYPE"
