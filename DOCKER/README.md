
# DOCKER INSTALLATION (kali)  
  
  sudo apt update && apt upgrade -y  
  sudo apt install docker.io -y  
  sudo systemctl enable docker --now  
  
  printf '%s\n' "deb https://download.docker.com/linux/debian bullseye stable" |
  sudo tee /etc/apt/sources.list.d/docker-ce.list  
  sudo apt update
  sudo apt install -y docker-ce docker-ce-cli containerd.io  
  sudo usermod -aG docker $USER
  



# COMMANDES  
  
  docker -v       -------------->                         Affiche la version de docker  
  docker ps       -------------->                         Affiche les processsus docker  
  docker ps -a    -------------->                         Affiches tous les processus docker  
  docker run appli:version     -------------->        Telecharge et lance un conteneur docker  
  ex: docker run nginx:latest  
  docker run -d appli:version      -------------->   Telecharge et lance un conteneur en redonnant la main sur le systeme  
  ex: docker run -d nginx:latest  
  docker run -d --name lenomsouhaité appli:version --------------> L'option --name suivi d'un nom permet de nommé son conteneur  
  ex: docker run -d --name C1 nginx:latest
  docker stop id/nomduconteneur  
  docker start id/nomduconteneur  
  docker rm -f id/nomduconteneur
 
