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
Pendant la correction, j'ai appris la magique “Tab” pour compléter automatiquement les noms de dossiers ou fichiers, ce qui me permets de gagner beaucoup de temps.

Avec **mkdir**, on peut créer plusieurs dossiers à la fois, ce que je ne savais pas quand j'avais fait l'exercice moi-même.
Et puis la commande **mv** peut servir à changer le nom d'un dossier, ce que je ne savais non plus avant.  
Après la correction, on reprend SSH-KEY et github. J'ai réussi à créer SSH-KEY et à ajouter la clé dans mon compte github, je comprends un peu ce que l'on fait.

La dernière heure est consacrée aux commandes git. **Git, c'est un système de gestion des versions**, déjà, je ne comprends pas bien ce que ça veut dire ce systm̀e de gestion des versions malgré l'explication du prof. Je suivais simplement les consignes du prof jusqu'à ce que j'ai réussi à modifier une repositoiry avec les commandes git depuis mon terminal linux.

Concernant la commande **git add**, au début, je pensais que son argument est un ou plusieurs modifications, mais quand j'ai tapé 'git add README.md' dans mon terminal, je me suis rendue compte que l'argument de cette commande est plutôt un fichier ou un dossier. Avec **git add**, on va sauvegarder une ou plusieurs modifications sur certain(s) fichier(s) ou dossier(s) que l'on a déjà faites. Quand on est prêt, on peut les 'committer' avec la commande '**git commit**',après, on pousse les modifications au dépôt distant avec la commande '**git push**'.  

Donc le processus est :  

• plusieurs modifications locales =⇒ un add  
• 1 à plusieurs add =⇒ 1 commit  
• 1 à plusieurs commits =⇒ 1 push  
• 1 à plusieurs push =⇒ 1 tag

Je comprenais pas très bien la différence entre **git status** et **git log** quand le prof les expliquait. J'ai essayé les deux commandes chez moi après le cours. Je peux donc les distinguer par leur outputs, si je le comprends bien: quand on fait 'git status', ça va donner ce que je suis en train de faire sur le dépôt dans ma machine, et quelles modifications je n'ai pas encore commitées et envoyé au dépôt distant. En revanche, quand on fait 'git log', cela va montrer toutes les modifications **déjà commitées** par tous les auteurs possibles, c'est littéralement un 'blog' de ce que l'on a déjà fait sur ce dépôt.

