
# ELASTICSEARCH

Elasticsearch est un logiciel utilisant Lucene pour l'indexation et la recherche de données. Il fournit un moteur de recherche distribué et multi-entité à travers une interface REST. C'est un logiciel écrit en Java distribué sous licence Elastic2 (Open core). L'éditeur propose aussi une version sous Server Side Public License ainsi que la possibilité de souscrire à une offre Saas.

Elasticsearch est le serveur de recherche le plus populaire chez les professionnels, suivi par Apache Solr qui utilise aussi Lucene3. Il est associé à deux autres produits libres, Kibana et Logstash, qui sont respectivement un visualiseur de données et un ETL (initialement destiné aux logs).u.

# CONTEXT

Dans le cade du passage de la certification iso 27001, j'ai eu comme projet d'apporter une solution de centralisation ( captures, injections, filtres, supervison) de logs de serveurs web, de type NGINX.

# LES PREREQUIS MINIMAL

  * Un serveur linux de type debian (ubuntu..)
  * installer curl ( apt-get install curl)
  * installer nginx (apt-get install nginx ; systemctl start nginx ; curl 127.0.0.1)

# LE PACKAGE

  * Le fichier de configuration Elasticsearch, elasticsearch.yml.
  * Le fichier de configuartion de KIBANA, kibana.yml.
  * Le fichier de configuration de filebeat, filebeat.yml. 
  * le module filebeat nginx

# ETAPES
 
 __1)__ __INSTALLATION & CONFIGURATION DE ELASTICSEARCH 7.6.1__  
 
   *  wget --directory-prefix=/opt/ https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.6.1-amd64.deb
   *  cd /opt/ && dpkg -i elasticsearch-7.6.1-amd64.deb
   *  cd /etc/elasticsearch/ && cp -pr jvm.options jvm.options.backup
   *  cd /etc/elasticsearch/ && nano jvm.options, -changer Xms1g en Xms512m et -changer Xmx1g en Xmx512m.
   *  cp elasticsearch.yml elasticsearch.yml.backup
   *  nano /etc/elasticsearch/elasticsearch.yml 
   *  Decommenter #node.name: node-1 en node.name: node-1
   *  changer #network.host: 192.168.0.1 en network.host: 0.0.0.0
   *  changer #discovery.seed_hosts: [""], [""] en discovery.seed_hosts: ["ip_du_serveur", "127.0.0.1"]
   *  changer #cluster.initial_master_nodes: ["node-1", "node-2"] en cluster.initial_master_nodes: ["node-1"] 
   *  systemctl enable elasticsearch
   *  systemctl start elasticsearch
   *  Faire un test avec curl ip_du_serveur:9200


 
 __2)__ __INSTALLATION & CONFIGURATION DE KIBANA 7.6.1__
   
   *  wget --directory-prefix=/opt/ https://artifacts.elastic.co/downloads/kibana/kibana-7.6.1-amd64.deb
   *  cd /opt/ && dpkg -i kibana-7.6.1-amd64.deb
   *  cd /etc/kibana/ && cp -pr kibana.yml kibana.yml.backup
   *  nano /etc/kibana/kibana.yml et changer #server.host: "localhost" en server.host: "0.0.0.0"
   *  systemctl enable kibana
   *  systemctl start kibana
   *  systemctl status kibana
   *  Dans un navigateur web faire un ip_du_serveur:5601
 
 __3)__  __INSTALLATION & CONFIGURATION DE LOGSTASH 7.6.1__
 
   * apt-get update && apt-get upgrade
   * apt-get install default-jre default-jdk
   * wget --directory-prefix=/opt/ https://artifacts.elastic.co/downloads/logstash/logstash-7.6.1.deb 
   * cd /opt/ && dpkg -i logstash-7.6.1.deb
   * systemctl enable logstash
   * systemctl start logstash
   * systemctl status logstash
   * cp -pr /etc/logstash/logstash.yml logstash.yml.backup

 __4)__  __INSTALLATION & CONFIGURATION DE FIREBEAT__
 
   *  wget --directory-prefix=/opt/ https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.6.1-amd64.deb
   *  cd /opt/ && dpkg -i filebeat-7.6.1-amd64.deb
   *  systemctl enable filebeat
   *  systemctl start logstash
   *  systemctl status filebeat 
   *  cp -pr /etc/filebeat/filebeat.yml filebeat.yml.backup
   *  nano /etc/filebeat/filebeat.yml
   *  Dans la partie KIBANA changer #host: "localhost:5601" pour host: "ip_du_serveur:5601"
   *  Dans la partie ELASTICSEARCH hosts: ["localhost:9200"] pour hosts: ["ip_du_serveur:9200"]
   *  filebeat modules list
   *  filebeat modules enable nginx
   *  filebeat setup
   *  Sur le navigateur web taper l'ip_du_serveur:5601, l'interface de Kibana doit s'afficher.
   *  cliquer en bas a gauche sur la petite flèche puis management, kibana index patterns, create index pattern, indiquer filebeat-* faire suivant/valider.
   *  cliquer sur la boussole en haut à gauche (discover) pour voir le graphique des logs Nginx.
   
   __5)__ __CHANGER LE PATH DES LOGS DANS FILEBEAT__
   

  
