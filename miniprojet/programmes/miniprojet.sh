#!usr/bin/bash

#valider les arguments
if [ $# -ne 2 ]
then
	echo "Le script attend exactement 2 arguments: veuillez indiquer le fichier de url et le fichier à stocker les résultats "
	exit
fi

if [ ! -f $1 ]
then
	echo "c'est pas un fichier, veuillez reindiquer"
	exit
fi

if [ ! -f $2 ]
then
	echo "Veuillez reindiquer un fichier pour stocker les résultats"
	exit
fi

FICHIER_URL=$1
FICHIER_OUT=$2
lineno=1

#définir les en-têtes du tableau
echo -e "Numéro\tUrl\tHttp response\tEncodage\tNb_Mots">$FICHIER_OUT


while read -r line;
do

	curl -o tmp.txt -k -i -s -L -w "%{content_type}\n%{http_code}" ${line} > metadata.tmp
#-o tmp.txt: les informations du corps de la page web va être stocker dans le dossier tmp.txt
#1.peut éviter le probleme de curl -I -w "%{http_code}\n%{content_type}" https://fr.wikipedia.org/wiki/Robot
#avec cette commande, beaucoup d'informations vont s'afficher dans l'ecran
#2.peut faciliter l'utilisation de lynx, éviter des requêtes excessives éventuelles.

    encodage=$(cat metadata.tmp | head -n 1 | grep -E -o "charset=.*" | cut -d= -f2 )
#si la lighe de "content type" ne comprend pas "charset", encodage va être ""
    response=$(cat metadata.tmp | tail -n 1) #trouver et stocker les http reponse codes

    nb_mots=$(cat tmp.txt | lynx -dump -stdin -nolist | wc -w)


	echo -e "${lineno}\t${line}\t$response\t$encodage\t$nb_mots">>$FICHIER_OUT # ajouter les informations au tableau

	lineno=$(expr $lineno + 1)
done < "$FICHIER_URL"; # rediger le input, plus efficace que cat,
#cat : for element in $(cat fichier.txt): espaces vont etre considerés comme des separateurs

