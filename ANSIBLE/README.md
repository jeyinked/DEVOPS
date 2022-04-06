
# ANSIBLE

Ansible est une plate-forme logicielle libre pour la configuration et la gestion des ordinateurs. Elle combine le déploiement de logiciels (en) multi-nœuds, l'exécution des tâches ad-hoc, et la gestion de configuration. Elle gère les différents nœuds à travers SSH et ne nécessite l'installation d'aucun logiciel supplémentaire sur ceux-ci. Les modules communiquent via la sortie standard en notation JSON et peuvent être écrits dans n'importe quel langage de programmation. Le système utilise YAML pour exprimer des descriptions réutilisables de systèmes, appelées playbook.

# CONTEXT

Dans le projet d'amelioration continue, ansible me permet d'automatiser les maj des bdd et divers tâches d'administration système.
Ici se trouve tous les projets que j'ai developpé et mis en prodution en entrepise.

# LES PREREQUIS MINIMAL

  * Deux serveurs linux ( un master / une cible).
  * Sshd installé ( sur le master / et le serveur cible) .
  * Echange de clés ssh ( entre le master et son server cible) .
 

# LE PACKAGE

  * Ansible se trouve dans /etc/ansible/

