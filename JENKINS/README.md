

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

 
 

