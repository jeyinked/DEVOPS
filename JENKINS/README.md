

# JENKINS

Jenkins est un outil open source de serveur d'automatisation. Il aide à automatiser les parties du développement logiciel liées au build, aux tests et au déploiement, et facilite l'intégration continue et la livraison continue. Écrit en Java, Jenkins fonctionne dans un conteneur de servlets tel qu’Apache Tomcat, ou en mode autonome avec son propre serveur Web embarqué.

Il s'interface avec des systèmes de gestion de versions tels que CVS, Git et Subversion, et exécute des projets basés sur Apache Ant et Apache Maven aussi bien que des scripts arbitraires en shell Unix ou batch Windows.

# CONTEXT

Dans le cadre de ma veille technologique et de pouvoir monter en compétence sur des technologies DEVOPS.

# LES PREREQUIS MINIMAL

  * Un serveur Linux ( Debian, ubuntu ).
  
  

# INSTALLATION 

Se rendre sur https://www.jenkins.io/ 

sur le serveur: 

 curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null
    
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
    
    
  sudo apt-get update  
  sudo apt-get install fontconfig openjdk-11-jre  
  sudo apt-get install jenkins  
  
  Jenkins va generer une clé pour l'activer qui se trouve dans  
  /var/lib/jenkins/secrets/initialAdminPassword
  
  Le mot de passe en question qu'il faudra rentrer dans un navigateur web pour activer Jenkins.  
  Vérifier que jenkins est bien actif sur la machine avec un systemctl status jenkins.
  Dans un navigateur web, faire un 127.0.0.1:8080 (le port de jenkins par default est 8080).  
  
  Une page s'affiche qui vous confirme que jenkins est activé et qui vous demande le mot de passe (qui se trouve dans  /var/lib/jenkins/secrets/initialAdminPassword).  
  Cliquer sur "Installer les plugins suggérés"  
  
  # CREATION PREMIER UTILISATEUR ADMINISTRATEUR  
  Le nom d'utilisateur, le mot de passe, la confirmation du mot de passe, le nom complet et l'adresse courriel vous sera demandé.
  
  # INSTALLATION DE PLUGINS
  
  Sur le tableau de bord -> Administrer Jenkins -> Gestions des plugins -> Disponible > chercher par exemple "Role-based Authorization strategy" -> cocher la case et cliquer sur Télécharger maintenant et installer après le redémarrage.  
  Le plugins "Role-based Authorization strategy" permet d'administrer les utilisateurs par rôle, pour ce faire aller dans -> Administrer Jenkins -> Configurer la sécurité global -> Autorisations -> Cocher "Stratégie basée sur les rôles". 
 
  # UTILISATEURS ET ROLES
  
  Sur le tableau de bord -> Administrer Jenkins -> Gérer les utilisateurs -> Créer un utilisateur  
  Rentrer son nom d'utilisateur, le mot de passe, la confirmation, le nom complet, l'adresse courriel et cliquer sur créer un utilisateur.
  
  # CONFIGURATION DU PROFIL DE L'UTILISATEUR  
  Sur le tableau de bord -> Administrer Jenkins -> Gérer et assigner les rôles -> Gérer les rôles -> dans Rôle à ajouter -> indique le nom d'un rôle, Ex: "DEV" -> et cocher les permissions souhaités (add).  
  Dans la section "Item roles" -> Rôle à ajouter, indiquer le nom du projet, Ex: python.  
  Toujours dans la section Item roles -> Patron -> indiquer le nom autorisé pour l'autorisation sur les job, Ex: Python.* ( tout ce qui commence par python.) puis cliquer sur ajouter. Cocher les autorisations souhaité et enregistrer.  
  
  Pour assigner l'item roles à un utilisateur,  Sur le tableau de bord -> Administrer Jenkins -> Gérer et assigner les rôles -> Assigner les rôles -> Item roles -> Utilisateur/groupe à ajouter -> Mettre le nom de l'utilisateur souhaité et cliquer sur ajouter.  
  Pour finir cocher l'item role à associer à l'utilisateur ajouté.  
  L'utilisateur en question aura accès au job en question.
  
   # JOBS et URL JOBS
   
   On peut lancer plusieurs jobs de façon imbriqué les un des autres.
   La première étape et de crée plusieurs jobs (pour l'exemple 2 jobs, job1 et job2).  
    Sur le tableau de bord -> Nouveau item -> inscrire le nom du job "job1" -> Construire un projet free-style -> Cliqer sur ok.  
    Dans buid -> Exécuter un script shell -> echo "hello world" -> sauver.  
    Reproduire la même étape avec un job2 et un script shell echo "test ok" -> sauver.  
    Sur le tableau de bord -> Cliquer sur la petite fleche  -> Configurer -> Ce qui déclenche le Build -> construire après le build sur d'autres projets -> projet à surveiller -> mettre le nom du premier job donc dans l'exemple "job1" -> sauver.  
    
  Sur le tableau de bord -> Lancer le job1 -> Cliquer sur job2 -> Dans historique des builds -> Cliquer sur sur le dernier build -> Sortie de la console -> vérifier que le job est ok et c'est bien lancé à partir du premier job.  
  
  
  Pour lancer le job avec une URL, sur le tableau de bord -> cliquer sur un job -> configuer -> Ce qui déclenche le Build -> Déclencher les builds à distance -> Choisir un token (Exemple: 1234) -> Sauver.  
  Pour lancer le job à distance, lancer cette URL -> 127.0.0.1:8080/job/nom_du_job/build?token=token_choisis ( Exemple: 127.0.0.1:8080/job/job1/build?token=1234).
  
    
    
    
   
  
  
