
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
 git-config --global core.editor vi  
 git-config --list

  
# Les étapes d'un fichier  

  untracked --> unmodified --> modified --> staged
  
   
 # Principes & commandes de base   

   Dans le repertoire du projet, faire git init (la commande git init va crée un repetoire .git)  
   Dans le repertoire du projet, crée un fichier README.md avec la commande echo "versionduprojet" > README.md  
   Dans le repertoire du projet, faire un git status (cela affiche le status des fichiers et modifications)  
   Dans le repertoire du projet, faire un git add . ( le . permet de tracker tous les fichiers du repertoire), faire un git add nomdufichier pour uniquement traquer un fichier en particulier.  
   

   
