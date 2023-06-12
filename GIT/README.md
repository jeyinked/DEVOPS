
# GITLAB

Git est un logiciel de gestion de versions décentralisé. C'est un logiciel libre et gratuit, créé en 2005 par Linus Torvalds, auteur du noyau Linux, et distribué selon les termes de la licence publique générale GNU version 2. Le principal contributeur actuel de Git, et ce depuis plus de 16 ans, est Junio C Hamano.

# PREREQUIS 

Serveur Linux (kali rolling 2023.01 )

# INSTALLATION  

 apt update && apt upgrade -y  
 apt install git -y
 

# Configuration  
 
 git config --global user.name "jeromeaguas"  
 git config --global user.email "jeromeaguas@gmail.com"  
 git config --global core.editor vi  
 git config --list

  
# Les étapes d'un fichier  

  untracked --> unmodified --> modified --> staged
  
  untracked --> stager = git add  
  unmodified --> modified = modifier le fichier  
  modified --> stager = git add  
  unmodified --> untracked = git rm  
  staged -->  unmodified = git commit  
  
  Pour ignorer des fichiers, créer un fichier .gitignore à la racine du projet et y mettre par exemple :  
  
  #ignorer les fichiers de log
  *.log
  
  
 # GIT LOG  
 
 La commande git log permet d'afficher les commits.  
 git log  
 git log -p -2  
 git log --pretty=oneline  
 git log --graph
   
  
 # Principes & commandes de base  
 
   Les fichiers se trouvant dans un "working directory", une foi modifiés (ils ont le status de "modified files") et validés, il faut les envoyer dans "l'environnement de staging" grace à la commande git add, quand l'ensemble des fichiers du projet sont validés, on doit les transferés dans le repository grace à la commande git commit.

   1)Dans le repertoire du projet, faire git init (la commande git init va crée un repetoire .git, dedans il sauvegardera les modifications)  
     Autrement, il est possible de recuperer directement un repository avec la commande git clone <url of remote repository>
   Dans le repertoire du projet, crée un fichier README.md avec la commande echo "versionduprojet" > README.md  
  
 Dans le repertoire du projet, faire un git status (cela affiche le status des fichiers et modifications)  
  
 Dans le repertoire du projet, faire un git add . ( le . permet de tracker tous les fichiers du repertoire), faire un git add nomdufichier pour uniquement traquer un fichier en particulier.  
  
 Dans le repertoire du projet, on peut faire un git status pour vérifier les fichiers tracké.  
  
 Dans le repertoire du projet, faire un git commit -m "nomducommit" et faire un git status pour voir la modification.  

 Dans le repertoire du projet, faire un git tag -a (anoted) 1.0.0 -m "initial version"  
 
 Dans le repertoire du projet, faire un git tag pour afficher la version  
 
 Dans le repertoire du projet, faire un git show 1.0.0(numerodeversion), il affichera des informations comme le dernier commit.
   
   

   
