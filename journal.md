# Journal de bord du projet encadré
## Seance 1 : le 23-30 septembre 2025  
C'est le premier cours de PPE1. Yoann et Pierre ont fait une introduction de ce cours, notamment le projet que l'on doit faire 'la vie des mots sur web', on doit faire ce projet à trois(une personne de chaque université). Je ne connais que des camarades de Nanterre, donc je vais essayer de faire connaissance des camarades des autres établissements pour ne pas être laissé de côté.

Et puis on appris un peu l'histoire de Unix（de Unix à linux) avant de nous intéresser aux notions de “fichier”，“dossier” ,“arborescence” et chemin de fichiers. 

**un chemin absolu indique la position d’un fichier en partant de la racine.**  
ex: /home/pierre/PPE1  

**un chemin relatif indique la position d’un fichier en partant du dossier courant.**  
ex: ../../dev/input/mouse3    

(/ désigne la racine de l’arbre  
∼/ désigne le dossier personnel de l’utilisateur ( “HOME ")  
./ désigne le dossier courant (working directory )  
../ désigne le dossier parent

Après, on a appris quelques commandes de linux. Avant de la fin du cours, j'ai créé mon compte github et ssh-key, en suivant les consignes de Yoann. Je suis un peu perdue à cette étape, car je ne sais pas pourquoi on le fait.

Aprè le cours, pour me familariser aux **commandes et leur options et arguments**, j'essaie dans mon konsole terminal les commandes les plus utiles avant de faire l'exercice.  

<font color ="LightPink">**Les commandes couramment utilisées:**

**pwd**：**p**rint **w**orking **d**irectory  
**ls**： lister le contenu d’un dossier  
**cd**   change directory  
**cp**   copier  
**mv**   move déplacer  
**rm**   remove supprimer  
**mkdir** make directory créer un dossier  
**touch** crée un fichier (effet de bord bien pratique)  
**zip**   compresser une archive zip  
**unzip** décompresser une archive zip  
**tar**   manipuler les archives tar  
**file**  donne des informations sur le type de fichier  
**cat**   lit le contenu d’un ou plusieurs fichiers  
**head**  lit le début d’un fichier  
**tail**  lit la fin d’un fichier  
**cut**   sélectionne une ou plusieurs colonnes dans un fichier tabulé  
**less**  lecteur (interactif)

## Séance 2: la correction de l'Exercice1 et les commandes de git
Au début du cours, j'ai fait la correction de l'exercice avec Yoann.    
Pendant la correction, j'ai appris la magique “**Tab**” pour compléter automatiquement les noms de dossiers ou fichiers, ce qui me permets de gagner beaucoup de temps.  

Avec **mkdir**, on peut créer plusieurs dossiers à la fois, ce que je ne savais pas quand j'avais fait l'exercice moi-même.  
Et puis la commande mv peut servir à changer le nom d'un dossier, ce que je ne savais non plus avant.   
Après la correction, on reprend SSH-KEY et github.
J'ai réussi à créer SSH-KEY et ajoute la clé dans mon compte github, je comprends un peu ce que l'on fait.

La dernière heure est consacrée aux **commandes git**.  
**Git, c'est un système de gestion des versions**, déjà, je ne comprends pas bien ce que ça veut dire ce systm̀e de gestion des versions malgré l'explication du prof. Je suivais simplement les consignes du prof jusqu'à ce que je réussisse à modifier une repositoiry avec les commandes git depuis mon terminal linux.


On fait **git add** pour mettre des modifications dans la zone de préparation (“*staging area*”)

**git rm** pour enlever un fichier

Puis on fait **git commit** :

qui veut dire “Ok, je confirme ces changements, je les enregistre comme une version”

Chaque commit est comme un point de sauvegarde dans un jeu :

On peut revenir à cette version si besoin

Plusieurs commits forment un historique complet

Et quand on fait **“git push”**, on envoie ces sauvegardes sur le dépôt distant.  

**git tag**: pour marquer un commit particulier ou intéressant. 

- pour ajouter un tag:  git tag [-a] [-m message] <tagname> [commit]

- pour pousser un tag à github: git push origin <tagname>

**En résumé** :  

- plusieurs modifications locales =⇒ un add
  
- 1 à plusieurs add =⇒ 1 commit

- 1 à plusieurs commits =⇒ 1 push

- 1 à plusieurs push =⇒ 1 tag

NB： l'argument de 'git add' ：un fichier ou un dossier.
Avec git add, on va sauvegarder un ou plusieurs modifications sur certain(s) fichier(s) ou dossier(s) que l'on a déjà fait. Quand on est prêt, on peut les 'committer' avec la commande 'git commit',après, on pousser les modifications au dépôt distant avec la commande 'git push'. 

'**git status**' vs '**git log**' ：

- quand on fait '**git status**', ça va donner ce que je suis en train de faire sur le dépôt copié dans ma machine, et quelles modifications je n'ai pas encore commité et envoyé au dépôt distant.
- En revanche, quand on fait '**git log**', cela va montrer toutes les modifications **commitées** par tous les auteurs , c'est littéralement un 'blog' de ce que l'on a déjà fait sur ce dépôt.

## Séance 3&4 flux d'entrée sortie et script

Dans cette séance, on a appris les 3 flux d'entrées sorties et j'ai écrits mes premiers scripts de commmandes linux.  

<font color="ForestGreen">**1\. 3 flux de données**</font>  
**stdin**: l’entrée standard (par défaut le clavier)  
**stdout**：la sortie standard (par défaut l’écran)  
**stderr**：la sortie d’erreurs standard (par défaut l’écran)

<font color="ForestGreen">**2\. redirection des flux**</font>  
**<**：remplace le clavier par le contenu d’un fichier  
**1>** ou **>** ：écrit stdout dans un fichier  
**2>** ：écrit stderr dans un fichier  
**&>** ：écrit stdout et stderr dans un fichier  

En écriture, si on double le chevron (>>, >>&, 2>>), on écrit en ajoutant la sortie à la fin d’un fichier.

**ATTENTION**: les chevrons simples (>, >&, 2>) **écrasent** le fichier s'il existe déjà.

<font color ="ForestGreen">*Prenons l'exemple de la commande 'wc':*</font>  
(**wc**:  
Usage: wc [OPTION]... [FILE]...
  or:  wc [OPTION]... --files0-from=F  
  
Pour chaque fichier (FILE), **wc** affiche :  

- le nombre de lignes,

- le nombre de mots,

- le nombre d'octets (bytes).

Si tu donnes plusieurs fichiers, il affiche aussi un total général à la fin.

options utiles：

  -c, --bytes            Afficher le nombre d’octets.  
  -m, --chars            Afficher le nombre de caractères.  
  -l, --lines            pAfficher le nombre de lignes (sauts de ligne).）

**wc < fic.txt** vs **wc fic.txt**  
![image.png](attachment:674bed37-1b97-45f4-97bf-1c4a9778f0a1.png)
```bash
zhengting@zhengting-glogxxx:~/Desktop/Plurital/PPE1/Exercice1/ann/2016$ wc < 2016_01_01-001.ann
 13  74 396
zhengting@zhengting-glogxxx:~/Desktop/Plurital/PPE1/Exercice1/ann/2016$ wc 2016_01_01-001.ann
 13  74 396 2016_01_01-001.ann
```

*fic.txt dans "wc < fic.txt" n'est pas un argument*

**wc fic.txt > output.txt**  vs  **wc fic.txt >> output.txt** 

![image.png](attachment:50a4d74c-cb87-4f42-8f7d-cc5b664791e2.png)
```bash
zhengting@zhengting-glogxxx:~/Desktop/Plurital/PPE1/Exercice1/ann/2016$ wc < 2016_01_01-001.ann > output.txt
zhengting@zhengting-glogxxx:~/Desktop/Plurital/PPE1/Exercice1/ann/2016$ cat output.txt 
 13  74 396
zhengting@zhengting-glogxxx:~/Desktop/Plurital/PPE1/Exercice1/ann/2016$ wc < 2016_01_01-002.ann > output.txt
zhengting@zhengting-glogxxx:~/Desktop/Plurital/PPE1/Exercice1/ann/2016$ cat output.txt 
 25 143 814
zhengting@zhengting-glogxxx:~/Desktop/Plurital/PPE1/Exercice1/ann/2016$ wc < 2016_01_01-002.ann >> output.txt
zhengting@zhengting-glogxxx:~/Desktop/Plurital/PPE1/Exercice1/ann/2016$ cat output.txt 
 25 143 814
 25 143 814
```
<font color="ForestGreen">**3\. pipe : |**</font>

**cmd1 | cmd2**: la sortie standard (stdout) de cmd1 est envoyée en stdin de cmd2.  
**cmd1 |& cmd2**: les sorties stdout et stderr de cmd1 sont toutes deux redirigées vers
stdin de cmd2.

**Exercice**

cat 2016*.ann | grep Location | wc -l > Output_2016.txt
                                               
*stdout* ———>*stdin*——>*stdout*—>*stdin*——>*stdout*

stderr sur l'écran

<font color="ForestGreen">**4\. Script**</font>

Il s'agit d'écrire des commandes dans un fichier

• ajouter des commentaires # (comme python, on execute pas les code après #)  
• ajouter un shebang #!/usr/bin/bash  
• rendre le fichier exécutable (avec chmod +x)

<font color="ForestGreen">**5\. Arguments et variables**</font>
    Selon ma compréhension:

Selon ma compréhension:

**Arguments:**  
Les arguments d’un script sont les informations qu’on lui donne au moment de l’exécuter.

**Variables:**  
Comme en Python, on peut créer des variables dans le script. C’est pratique pour garder les arguments ou les résultats de commandes.   
Il faut faire très attention quand on définit des variable, **sans espace!!!**  
par exemple :

DATADIR=$1'     correct  

DATADIR = $1    **incorrect**  

<font color="ForestGreen">**6\. Conditions et Boucles(if,for,while)**</font>  
La logique de if,for et while est similaire que ceux en python, sauf que le grammaire est différent,
en raccoursi:

```bash
if [ condition ]  
    then  
    echo " la condition est valide "  
else  
    echo " la condition n ’ est pas valide "   
    exit  
fi  
```
par exemple, on peut l'utiliser pour vérifier si l'utilisateur a donné tous les arguments requis:

```bash
if [ $# -ne 4 ]  
then  
    echo "nombre d'arguments incorrect, il en faut 4"  
    exit  
fi  
```

Avec des **doubles crochets**, il est possible d’utiliser des **expressions régulières** pour tester des chaînes.  
exemple：

**expressions régulières**：introduit par **=～**
```bash
if [[ $1 =∼ bon (jour|soir) ]] #ça veut dire que si l'argument est bonjour ou bonsoir
then
    echo " salut "
fi
```
**Conditions couramment utilisées**  
(1)Sur les chemins   
-f fichier vrai si le fichier existe  
-d dossier vrai si le dossier existe  
-s fichier vrai si le fichier existe et n’est pas vide  
```bash
if [ ! -d $1]
then
    echo "veuillez indiquer un dossier"
    exit
fi
```  
**on met "!" avant la condition pour exprimer non dossier, non fichier ou non exister.**  

(2)Sur des chaînes de caractères  
= ou != tester si deux chaînes sont identiques (=) ou différentes (!=)  
\< ou \> pour déterminer si in chaîne est avant ou après une autre dans l’ordre alphabétique  
-n chaine vrai si la chaîne n’est pas vide  
-z vrai si la chaîne est vide (ex: argument non fourni)
(3)Sur les entiers  
a -eq b si a est égal à b (equal)  
a -ne b si a est différent de b (not equal)  
a -lt b si a est plus petit que b (less than)  
a -gt b si a est plus grand que b (greater than)  
a -le b si a est inférieur ou égal à b  
a -ge b si a supérieur ou égal à b


**Attention！!!**  
Expression régulière =~ doit être entouré d’espaces.  
À l’intérieur d’une expression régulière dans [[ ]], le symbole | ne doit pas être entouré par des espaces.

**Boucles for et while**    
La logique des boucles for et while dans les scripts Unix est similaire à celle des boucles for et while en Python, sauf que la syntaxe est différente.  

- **boucle for**
exemple de l'exercice *comptes.sh*

```bash
if [ $# -ne 1 ]
then
    echo "veuillez préciser le dossier où se trouvent les fichiers ann"
    exit
fi

DATADIR=$1
#Plutôt que d’écrire trois fois echo "Nombre de lieux en 2016/2017/2018 "blabla, on peut tirer parti d’une boucle 'for' afin de rendre le code plus efficace.
for ANNEE in 2016 2017 2018
do
    echo "Nombre de lieux en $ANNEE:"
    cd $DATADIR
    cat $DATADIR/$ANNEE/* | grep Location | wc -l
done  
```
- **boucle while**

La boucle while permet de répéter des instructions tant qu’une condition est vraie.  

Syntaxe de base :  
```bash
while [ condition ]
do
    echo "Je continue à boucler"
done
```
**Remarques importantes** :

Les conditions sont similaires à celles des if.

La commande read est souvent utilisée avec while : tant qu’il y a quelque chose à lire, on le traite

Attention aux boucles infinies ! Si ça tourne sans fin, utiliser CTRL-C pour arrêter.

*exemple de boucle while：*

```bash
#valider l'argument
if [ $# - ne 1 ]
then
    echo " ce programme demande un argument "
    exit
fi

if [ ! -f $1 ]
then
    echo "veuillez indiquer un fichier"
    exit
fi
#définir une variable qui stoque le premier argument
FICHIER_URLS = $1

#définir deux variables
OK =0
NOK =0

#while boucle: 
while read -r LINE ; #lire toutes les lignes, pour chaque ligne de FICHER que l'utilisateur donne
do
    echo " la ligne : $LINE "
    if [[ $LINE =∼ ^ https ?:// ]]#vérifier si la ligne prend la forme de https:// ou http://
    then
        echo " ressemble à une URL valide "
        OK = $ ( expr $OK + 1) #stocker le nombre de lignes de url dans la variable OK
    else
        echo " ne ressemble pas à une URL valide "
        NOK = $ ( expr $NOK + 1) #stocker le nombre de lignes qui ne sont pas url dans la variable NOK
    fi
done < $FICHIER_URLS #rediger l'entrée de données, le boucle while read -r LINE lira les lignes de ce fichier.
echo " $OK URLs et $NOK lignes douteuses " #montrer le nombres de url et celui de lignes douteuses dans l'ecran.
```

<font color="ForestGreen">**7\. Erreurs et réflexions**</font>   

**(1)Définition des variables**  
La première erreur qui me revient souvent, c’est que je mets des espaces quand je définis une variable, ce qui est incorrect en Bash.  
Correct : FICHIER_URLS=$1  
Incorrect : FICHIER_URLS = $1

**(2)Condition if**    
À l’inverse, dans les instructions if, j’oublie fréquemment de mettre des espaces autour des crochets.  
Dans Bash, quand on utilise [ ou [[, il faut toujours laisser un espace avant et après les crochets.  
Correct : if `[ condition ]`; then  
Incorrect : if`[condition]`; then  

**(3)Expressions régulières avec =~**  
Lorsqu’on utilise `[[ ... =~ blabla ]]`, il faut laisser un espace avant et après `=~`.  
À l’intérieur de l’expression régulière, les symboles comme | ne doivent pas être entourés d’espaces.  
Correct : `[[ "$1" =~ bon(jour|soir) ]]`  
Incorrect : `[[ "$1" =~ bon( jour | soir ) ]]`

**(4)Autres erreurs fréquentes**

- Oublier #!/bin/bash au début du script.

- Mauvaise utilisation des guillemets : toujours citer les variables pour éviter les bugs avec les espaces et saute-lignes.

- **Oublier then, do, fi ou done dans les blocs**.

8\. **Difficultés rencontrées pendant l'exercice:**  
Exercice 2b:  
 
```bash  
#！usr/bin/bash

CHEMIN=/home/zhengting/Desktop/Plurital/PPE1/Exercice1/ann
Annee=$1
Mois=$2
#Afficher les arguments:
echo "Annee: $Annee"
echo "Mois: $Mois"

NBlieux=$(cat "$CHEMIN"/$Annee/$Annee_$Mois_* | grep Location | cut -f3 | sort | uniq -c | sort -nr| head -n 10)

echo -e "Les lieux les plus cités: \n$NBlieux"  
```

mais quand je fais： 
**bash compte_lieux.sh * /** 
dans mon bash, ça cause une erreur:
cat: '/home/zhengting/Desktop/Plurital/PPE1/Exercice1/ann/compte_lieux.sh/*': No such file or directory

Il faut ajouter **" "**, pour résoudre ce problème:
**bash compte_lieux.sh "\*" "\*" /**

Je sais pas comment rectifier le script pour éviter d'entrer "" 

## Seance 5&6 Web: HTML, HTTP, récupérer des pages  
<font color="ForestGreen">**1\. HTML**</font>  
Cette séance aborde la page web et les outils pour la récupérer.
Concernant HTML, heureusement, on l'avait appris dans le cours Constructions des données la semaine précédante: les balises, la hiérarchie et la sructure des balises, c'est donc facile à comprendre.  

<font color="ForestGreen">**2\. HTTP**</font>  
<img width="2289" height="721" alt="图片" src="https://github.com/user-attachments/assets/9ea78294-d9ba-48fd-92cf-4b36143dcee7" />
Ce qui nous intéresse le plus, ce sont l'étape3 et l'étape4, qui correspondent respectivement à la réponse HTTP à nos requêtres et l'affichage de la page web duquel on peut retirer les informations dont on a besoin.  

Il y a 5 status de http réponse:  
• 1xx : information  
• 200 : réussite  
• 3xx : redirections(exemple 301 dans le miniprojet)  
• 4xx : erreurs du client  
• 5xx : erreurs du serveur  

<font color="ForestGreen">**3\. curl pour récupérer le code Http et encodage**</font>  
Options importantes:
**• curl -i** : donner des informations sur l’interaction avec le serveur  
exemple:  
<img width="2447" height="981" alt="图片" src="https://github.com/user-attachments/assets/40db865e-ead6-40cd-a264-22246dadd673" />

la première ligne 'HTTP/2 200' représente le statut de la réponse http.  
la ligne 'content-type: text/html; charset=ISO-8859-1' nous est intéressant aussi.  
**• curl -o**: Enregistre le corps de la réponse (body) du serveur dans un fichier, **les informations de header ne seront pas inclues dans ce fichier.**  
mais si on utiliser *curl -I usl -o fichier.txt*, les headers de la réponse vont être stockés dans le fichier.txt.  
**• curl -L** : suit les redirections  
**• curl -I** : ne donne que les headers de la répnse(code http, content-type, encodage, etc. pas le contenu du corps  
exemple:  
<img width="2447" height="816" alt="图片" src="https://github.com/user-attachments/assets/260ea97b-7a5c-4bc0-ac7d-bef99b7567f3" />  
**• curl -w** ：permet d’afficher des informations supplémentaires sur la requête HTTP, après que la page a été téléchargée. On peut choisir quoi afficher : code HTTP, temps de reponse etc.  
**• curl -s** ：mode silencieux, ne montre pas la barre de progression ni les messages d’erreur standard.  

<font color="ForestGreen">**4\. lynx: navigateur dans le terminal**</font>  
**• lynx -dump**：récupérer le contenu textuel d’une page pour l’afficher  
**• lynx -dump -nolist**： retirer la liste des liens d’une page à l’affichage  

<font color="ForestGreen">**5\. exercice: miniprojet**</font>  
```bash
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
```

<font color="ForestGreen">**6\. difficultés du miniprojet**</font>  
**1) séparer les colonnes avec des tabulations:**  
il faut utiliser l'option -e dans la commande echo  
eg: 
```bash
echo -e "$N\t${line}\t$response\t$encodage\t$nb_mots"  
```
ça va séparer les variables avec des tabs, **echo -e** sert ici à "enable interpretation of backslash escapes"  
**2) retirer le code HTTP de réponse**  
Au début, j'ai utilisé
```bash
http_code=$(curl -s -w "%{http_code}\n" ${line})
```
mais ça donne trop d'informations, seulement la dernière ligne comporte l'information du code http réponse. Il faut donc stocker la sortie des autres informations à un autre lieu en ajoutant l'option **-o fichier.html**,   
```bash
http_code=$(curl -o fichier.html -s -w "%{http_code}\n" ${line})
```  
mais quand je fait le miniprojet, je ne savais pas très bien l'usage de **curl -o**, j'ai utilié donc la minière la plus bête avec les commandes head, cut et tr:  
```bash  
web=$(curl -s -k -i ${line})
response=$(echo "$web" | head -n 1 | cut -d " " -f2 | tr -d "\r\n") #trouver et stocker les http reponse codes
```  
**3)Problème de 429**  
Le problème vient du fait que le script exécute plusieurs fois la commande curl -s -k -i ${line} pour une même URL, par exemple jusqu’à quatre fois dans la condition  
```bash
if [[ "$response" =~ ^3 ]].  
```
Cela entraîne un nombre excessif de requêtes successives vers le même site web, ce qui peut être interprété comme un comportement automatisé abusif.  
En conséquence, le serveur renvoie souvent le code d’erreur HTTP **429 (Too Many Requests)**, voire d’autres codes d’erreur de la série 4xx, indiquant que l’accès est temporairement limité.  
ma première version:
```bash
while read -r line; 
do 
    response=$(curl -s -k -i ${line} | head -n 1 | cut -d " " -f2 | tr -d "\r\n") #trouver et stocker les http reponse codes 
    if [[ "$response" =~ ^3 ]]
    then 
        line_r=$(curl -s -k -i ${line} | grep -i "location" | cut -d " " -f2 | tr -d "\r\n") #trouver le lien vers lequel on est redigé 
        ct_line=$(curl -s -k -i $line_r | grep -i "charset" | head -n 1) 
    else 
        ct_line=$(curl -s -k -i ${line} | grep -i "charset" | head -n 1) #repérer la ligne contenant l'information de encodage  
    fi 
    if [ -n "$ct_line" ] 
    then 
        encodage=$(echo "$ct_line" | cut -d "=" -f2 | tr -d "\r\n") #segmenter l'encodage 
    else 
        encodage="" 
    fi 
    ...
```
Pour éviter le problème du code 429, j’ai ajouté une variable $web afin de stocker la réponse de la commande  
```bash 
curl -s -k -i ${line}
```
De cette façon, une seule requête est effectuée pour chaque site, ce qui permet d’éviter les accès répétés et donc la surcharge du serveur.  
**4)Problème de echo $web**  
Un autre problème est survenu lorsque j’essaie d’utiliser la variable $web dans d’autres commandes, par exemple :
```bash
web=$(curl -s -k -i ${line})
response=$(echo $web | head -n 1 | cut -d " " -f2 | tr -d "\r\n") 
ct_line=$(echo $web | grep -i "charset" | head -n 1)
```
Si l’on fait **echo $ct_line**, **une grande quantité d’informations** s’affiche à l’écran, bien au-delà de ce que l’on attend.

La cause est que echo $web **concatène** toute la sortie de curl **en une seule ligne**, supprimant tous les sauts de ligne.

Du coup, **grep** cherche dans une ligne unique contenant tout le contenu de la page, et renvoie beaucoup de texte.  
**->Solution**

Pour résoudre ce problème et on peut préserver la structure multi-lignes :  
Toujours utiliser les guillemets autour de la variable :
```bash
web=$(curl -s -k -i ${line})
response=$(echo "$web" | head -n 1 | cut -d " " -f2 | tr -d "\r\n") 
ct_line=$(echo "$web" | grep -i "charset" | head -n 1)
```  

**5)SSL certificate problem**  
quand je fais
```bash
curl -i https://roboty.magistry.fr
```
le console retourne：
```bash
curl: (60) SSL certificate problem: certificate has expired More details here: https://curl.se/docs/sslcerts.html  
```
mais quand je copier-coller ce site dans google, je peut y accéder.  
**-solution**
pour résoudre ce problème, il faut utiliser curl -k pour dire à curl : « ignorer les erreurs de certificat SSL » et continuer la connexion.
**6)"lynx Can't access startfile" probleme**
```bash
lynx -accept_all_cookies
```
solution du professeur
```bash
curl -i -s -L -w "%{content_type}\n%{http_code}" -o tmp.txt ${line} > metadata.tmp
nb_mots = $(cat tmp.txt | lynx -dump -stdin -nolist | wc -w)
```
cette solution peut aussi éviter le problem, et en même temps réduire le risque d’erreur **429** due à des requêtes trop nombreuses.

<font color="ForestGreen">**6\. Correction d'exercice: miniprojet1**</font>  
```bash
#!usr/bin/bash

#valider les arguments
if [ $# -ne 2 ]
then
	echo "Le script attend exactement 2 arguments: veuillez indiquer le fichier de url et le fichier à stocker les résultats "
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
```
<font color="ForestGreen">**7\. miniprojet2: tranformer la sortie TSV à html**</font>  
```bash  
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


FICHIER_URL=$1
FICHIER_OUT=$2
lineno=1

#définir les en-têtes du tableau
echo "
<html>
    <head>
        <meta charset="UTF-8" />
    </head>
    <body>
        <p>Cette page comporte les informations de http réponse code et encodage et numéros de mots des urls portant sur 'robot'</p>
        <table>
            <tr><th>Numéro</th><th>Adresse d'URL</th><th>Http response code</th><th>Encodage</th><th>Nombre de mots</th></tr>
">$FICHIER_OUT


while read -r line;
do

	curl -o tmp.txt -k -i -s -L -w "%{content_type}\n%{http_code}" ${line} > metadata.tmp

    encodage=$(cat metadata.tmp | head -n 1 | grep -E -o "charset=.*" | cut -d= -f2 )
#si la lighe de "content type" ne comprend pas "charset", encodage va être ""
    response=$(cat metadata.tmp | tail -n 1) #trouver et stocker les http reponse codes

    nb_mots=$(cat tmp.txt | lynx -dump -stdin -nolist | wc -w)


	echo "<tr><td>${lineno}</td><td>${line}</td><td>$response</td><td>$encodage</td><td>$nb_mots</td></tr>">>$FICHIER_OUT # ajouter les informations au tableau

	lineno=$(expr $lineno + 1)
done < "$FICHIER_URL"; # rediger le input, plus efficace que cat,
#cat : for element in $(cat fichier.txt): espaces vont etre considerés comme des separateurs
echo "</table>
    </body>
</html>">>$FICHIER_OUT  
```
En écrivant ce script, je me suis rendue compte que :  
Les espaces, tabulations et sauts de ligne dans le code HTML  
→ **n’affectent pas l'affichage dans le navigateur.**

Les tabulations servent uniquement à :
rendre le code plus lisible, faciliter la maintenance du document.

**Problème à résoudre** :   
Les cellules de l’en-tête du tableau sont centrées tandis que celles des autres lignes sont alignées à gauche, ce qui rend l’affichage peu harmonieux. De plus, le tableau n’a pas de bordures, ce qui le rend peu esthétique:
<img width="2094" height="861" alt="图片" src="https://github.com/user-attachments/assets/d318f53e-1f3c-49ba-8495-19fd1fd57f4e" />

## Seance 7 gh pages, css, style Bulma et regex  
**1\. git hub pages**  
Les pages GitHub permettent de créer et déployer un site web lié à un dépôt git. Cette partie est relativement facile, il faut simplement suivre les étapes indiquées dans les slides.  
**2\. les balises utilisées pour embellir les pages HTML**  
| **balise** | **fonction** |
|-----------|--------------|  
| `<a href="www.perdu.com">Cliquer ici.</a>` | ajouter des liens |  
| `<p>...</p>` | créer des paragraphes |  
| `<h1></h1>` | pour un entête de niveau 1 |  
| `<h2></h2>` | pour un entête de niveau 2 |  
| `<b>` | pour du texte gras |  
| `<i>` | pour du texte italique |  
| `<em>` et `<strong>` | pour l’emphase |  
| `<ul><li></li></ul>` | listes à point |  
| `<ol><li></li></ol>` | listes numérotées |

- **Les classes**
  au sein d'une balise, les classes servent à regrouper des éléments HTML pour leur appliquer des styles communs, et un même élément peut appartenir à plusieurs classes en les séparant par des espaces.
  exemple：<p class="boxed text-big">Le paragraphe d’après.</p>
  
**3\. CSS**
Il y a trois grandes façon d’insérer du CSS pour modifier le style d’une page web：  
• directement dans une balise  
• dans l’entête d’un fichier HTML  
• dans un fichier à part  
si c'est le dernier cas, on peut référencer le fichier dans l’en-tête du document HTML  
`<link rel="stylesheet" href="assets/css/style.css" />`

**4\. Bulma**  
Une librairie qui permet de styliser du HTML très facilement, on peut le référencer dans l'entête du document HTML:  
`<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.4/css/bulma.min.css"</>`  

**5\. Exercice miniprojet 3**  
Pour gagner du temps, j’ai repris certains styles présents dans les exemplaires. J’ai intégré les styles du fichier 4_tableaux.html à mon propre document de tableaux, et ceux de l’exemplaire à ma page index.html, en y apportant quelques modifications afin de rendre la page plus esthétique et davantage conforme à mes goûts.  
Quand j'ai modifié le script miniprojet pour ajouter directement le style CSS
dans la génération du code HTML du script, j'ai rencontré un problème:
```bash  
echo "
<html>
    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/versions/bulma-no-dark-mode.min.css\">
    </head>
    <body>
    <section class="section has-background-grey">
      <div class="container has-background-white">
        <div class="hero has-text-centered">
          <div class="hero-body">
            <h1 class="title">
              Tableaux du miniprojet
              <br />
              <br />

            </h1>
            <p>Cette page présente les informations concernant le code de réponse HTTP, l’encodage et le nombre de mots des URL traitant du thème « robot ».</p>
          </div>
        </div>


        <div class="columns is-centered">

        <table class="table is-bordered is-hoverable is-striped" style ="margin-bottom:60px">"  
```  
Au début, comme montré ci-dessus, j’avais simplement copié-collé les styles dans la commande echo "". Cependant, le problème venait du fait qu’il y avait des guillemets " " à l’intérieur même de la chaîne passée à echo, ce qui empêchait les guillemets internes d’être interprétés correctement. Cela entraînait des classes et des styles non appliqués dans le fichier HTML. Pour résoudre ce problème, il faut ajouter un antislash (\) devant chaque guillemet afin de les échapper.  

Avant d'ajout de antislash, la page html est moche :  

<img width="2426" height="1326" alt="图片" src="https://github.com/user-attachments/assets/0bbaa8a9-1ef5-40e4-9105-7cb7c1477175" />


Après l'ajout de antislash,la page devient normal et joli :

<img width="2409" height="923" alt="图片" src="https://github.com/user-attachments/assets/80630627-c760-4440-9e72-20381ef4340f" />

**regex**
[^\s] 的意思是：

✅ 匹配任意一个“非空白字符”

这里：

\s 表示所有空白字符，包括

空格 " "

制表符 \t

换行符 \n

回车 \r

垂直制表符等

\w 所有字母，不包含带accent的字母
\p{...}*
p:propriete unicode
\p{l}* ： matcher toutes les caractères unicodes, les caractères avec accent peuvent être repérés  
\p{ll}: lettre minuscule  
\p{lu}: lettre majuscule  
\p{lu}\p{ll}+: tous les mots avec initiale en majuscule
\p{lo}\*: caractères qui n'ont pas la distinction entre minuscule et majuscule.
\p{han}*






