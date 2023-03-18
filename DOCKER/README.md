
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

  docker ps [-a affiches tous les containeurs docker]  
  docker run  
  [- d pour executer le containeur en tache de fond]  
  [-p 8080:80 pour rediriger un port dans le containeur]  
  
  
  # CREATION IMAGE & PUSH DOCKER HUB  
  
    Avoir un compte gitbub et dockerhub.  
    
  
