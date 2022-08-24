# GITLAB

GitLab est un logiciel libre de forge basé sur git proposant les fonctionnalités de wiki, un système de suivi des bugs, l’intégration continue et la livraison continue. Développé par GitLab Inc et créé par Dmitriy Zaporozhets et par Valery Sizov, le logiciel est utilisé par plusieurs grandes entreprises informatiques, dont IBM, Sony, le centre de recherche de Jülich, la NASA, Alibaba, Oracle, Invincea, O’Reilly Media, Leibniz Rechenzentrum, le CERN4,5,6, European XFEL, la GNOME Foundation, Boeing, Autodata, SpaceX7 et Altares.

# CONTEXT 

Installation d'un serveur GITLAB dans un context de migration de GOGS à GITLAB.

# PREREQUIS 

Serveur Linux (Ubuntu 20.04.4 LTS)

# INSTALLATION  
 
  apt-get update && apt-get upgrade -y  
  apt-get install -qq -y vim git wget curl >/dev/null  
  curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash  
  apt install gitlab-ce  
  nano /etc/gitlab/gitlab.rb  --> modifier la ligne external_url et rajouter l'url souhaité.
  gitlab-ctl reconfigure
  

# PREMIERE CONNEXION  

  l'Id est "root", et le password est visible pendant 24h dans le fichier /etc/gitlab/initial_root_password  
  Dans un navigateur mettre l'ip du serveur, puis l'id root et le mot passe trouvé dans le fichier initial_root_password
  
  
   
  
