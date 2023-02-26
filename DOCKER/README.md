
# DOCKER INSTALLATION (ubuntu)  

  sudo apt install apt-transport-https ca-certificates curl software-properties-common  
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu `lsb_release -cs` test"  
  sudo apt update  
  sudo apt install docker-ce  
  docker -v


# COMMANDES  
  
  docker -v      -------------->             Affiche la version de docker  
  docker ps                         Affiche les processsus docker  
  docker ps -a                      Affiches tous les processus docker
 
