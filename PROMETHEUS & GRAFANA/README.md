

# PROMETHEUS

Prometheus est une application logicielle gratuite utilisée pour la surveillance et l' alerte des événements .Il enregistre des métriques en temps réel dans une base de données de séries chronologiques (permettant une grande dimensionnalité ) construite à l'aide d'un modèle d'extraction HTTP , avec des requêtes flexibles et des alertes en temps réel. Le projet est écrit en Go et sous licence Apache 2, avec le code source disponible sur GitHub, et est un projet gradué de la Cloud Native Computing Foundation, avecKubernetes et Envoy.

# GRAFANA
Grafana est un logiciel libre sous licence GNU Affero General Public License Version 32 (anciennement sous licence Apache 2.0 avant avril 2021) qui permet la visualisation de données. Il permet de réaliser des tableaux de bord et des graphiques depuis plusieurs sources dont des bases de données temporelles comme Graphite (en), InfluxDB et OpenTSDB3.

# LES PREREQUIS MINIMAL

  * Un serveur linux de type debian (ubuntu..).
  * installer curl ( apt-get install curl).

# ETAPES
 
 __1)__ __INSTALLATION DE PROMETHEUS__ 
   
   * apt-get update && apt-get upgrade 
   * apt-get install prometheus
   * le fichier de configuration se trouve dans /etc/prometheus/prometheus.yml
   * Dans un navigateur web mettre l'ip_du_serveur:9090 (le port pazr default de prometheus est 9090)
   * 
__2)__ __INSTALLATION DE GRAFANA__
   
   * apt-get install -y apt-transport-https
   * apt-get install -y software-properties-common wget
   * wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
   * echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
   * apt-get update 
   * apt-get install grafana 
