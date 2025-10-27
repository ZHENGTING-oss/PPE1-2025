#!usr/bin/bash

#valider les arguments
if [ $# -ne 2 ]
then
	echo "veuillez indiquer le fichier de url et le fichier à stocker les résultats "
	exit
fi

if [ ! -f $1 ]
then
	echo "c'est pas un fichier, veuillez reindiquer"
	exit
fi

if [ ! -f $1 ]
then
	echo "Veuillez reindiquer un fichier pour stocker les résultats"
	exit
fi

FICHIER_URL=$1
FICHIER_OUT=$2
N=1

#définir les en-têtes du tableau
echo -e "Numéro\tUrl\tHttp response\tEncodage\tNb_Mots">$FICHIER_OUT


while read -r line;
do
	web=$(curl -s -k -i ${line})
	response=$(echo "$web" | head -n 1 | cut -d " " -f2 | tr -d "\r\n") #trouver et stocker les http reponse codes
	if [[ "$response" =~ ^(4|5) ]]
	then
		encodage=""
		nb_mots=""
	else
		if [[ "$response" =~ ^3 ]]
		then
			line_r=$(echo "$web" | grep -i "location" | cut -d " " -f2 | tr -d "\r\n") #trouver le lien vers lequel on est redigé
			ct_line=$(curl -s -k -i $line_r | grep -i "charset" | head -n 1)
		else
			ct_line=$(echo "$web" | grep -i "charset" | head -n 1) #repérer la ligne contenant l'information de encodage

		fi

		if [ -n "$ct_line" ]
		then
			encodage=$(echo "$ct_line" | cut -d "=" -f2 | tr -d "\r\n") #segmenter l'encodage
		else
			encodage=""
		fi
		nb_mots=$(lynx -accept_all_cookies -dump -nolist ${line} | wc -w) #compter nombres des mots dans la page
	fi

	echo -e "$N\t${line}\t$response\t$encodage\t$nb_mots">>$FICHIER_OUT # ajouter les informations au tableau

	((N=N+1))
done < "$FICHIER_URL"; # rediger le input, plus efficace que cat
