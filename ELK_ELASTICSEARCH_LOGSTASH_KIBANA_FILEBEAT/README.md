
# ELASTICSEARCH

Elasticsearch est un logiciel utilisant Lucene pour l'indexation et la recherche de données. Il fournit un moteur de recherche distribué et multi-entité à travers une interface REST. C'est un logiciel écrit en Java distribué sous licence Elastic2 (Open core). L'éditeur propose aussi une version sous Server Side Public License ainsi que la possibilité de souscrire à une offre Saas.

Elasticsearch est le serveur de recherche le plus populaire chez les professionnels, suivi par Apache Solr qui utilise aussi Lucene3. Il est associé à deux autres produits libres, Kibana et Logstash, qui sont respectivement un visualiseur de données et un ETL (initialement destiné aux logs).u.

# CONTEXT

Dans le cade du passage de la certification iso 27001, j'ai eu comme projet d'apporter une solution de centralisation ( capture, injection, filtre, études) de logs de serveurs web, de type NGINX.

# LES PREREQUIS MINIMAL

  * Un serveur linux de type debian (ubuntu..)
  * installer curl ( apt-get install curl)

# LE PACKAGE

  * Le fichier de configuration Elasticsearch, elasticsearch.yml.
  * Le fichier de configuartion de KIBANA, kibana.yml.
  * Le fichier de configuration de filebeat, filebeat.yml. 

# ETAPES
 
 __1)__ __INSTALLATION DE ELASTICSEARCH 7.6.1__  
 
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
   *  aire un test avec curl ip_du_serveur:9200


 
 __2)__

 __3)__ 

 __4)__ 
   
 __5)__ 
     
 __6)__ 
