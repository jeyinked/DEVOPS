
# DOCKER INSTALLATION (ubuntu)  

  sudo apt install apt-transport-https ca-certificates curl software-properties-common  
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu `lsb_release -cs` test"  
  sudo apt update  
  sudo apt install docker-ce  
  docker -v


# COMMANDES  
  
  docker -v       -------------->                         Affiche la version de docker  
  docker ps       -------------->                         Affiche les processsus docker  
  docker ps -a    -------------->                         Affiches tous les processus docker  
  docker run <appli>:<version>     -------------->        Telecharge et lance un conteneur docker  
  ex: docker run nginx:latest  
  docker run - d <appli>:<version>      -------------->   Telecharge et lance un conteneur en redonnant la main sur le systeme  
  ex: docker run -d nginx:latest 
 
