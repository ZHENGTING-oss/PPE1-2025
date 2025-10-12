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

## Séance 3 flux d'entrée sortie et script

Dans cette séance, on a appris les 3 flux d'entrées sorties et j'ai écrits mes premiers scripts de commmandes linux.  

1. **3 flux de données**  
**stdin**: l’entrée standard (par défaut le clavier)  
**stdout**：la sortie standard (par défaut l’écran)  
**stderr**：la sortie d’erreurs standard (par défaut l’écran)

2. **redirection des flux**  
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

*fic.txt dans "wc < fic.txt" n'est pas un argument*

**wc fic.txt > output.txt**  vs  **wc fic.txt >> output.txt** 

![image.png](attachment:50a4d74c-cb87-4f42-8f7d-cc5b664791e2.png)

3. **pipe : |**

**cmd1 | cmd2**: la sortie standard (stdout) de cmd1 est envoyée en stdin de cmd2.  
**cmd1 |& cmd2**: les sorties stdout et stderr de cmd1 sont toutes deux redirigées vers
stdin de cmd2.

**Exercice**

cat 2016*.ann | grep Location | wc -l > Output_2016.txt
                                               
*stdout* ———>*stdin*——>*stdout*—>*stdin*——>*stdout*

stderr sur l'écran

4. **Script**

Il s'agit d'écrire des commandes dans un fichier

• ajouter des commentaires # (comme python, on execute pas les code après #)  
• ajouter un shebang #!/usr/bin/bash  
• rendre le fichier exécutable (avec chmod +x)

5. **variables** 