# Scaleable Magento2 Infrastucture on Kubernetes (k3s) with letsencrypt and Traefik2

## Prerequirements

export K3S_KUBECONFIG_MODE="644"

export INSTALL_K3S_EXEC=" --no-deploy traefik"

curl -sfL https://get.k3s.io | sh -

for more infos on k3s: https://k3s.io/

this setup should work for 1 node or multiple nodes 

the only issue right now would be the fs - which is still local so nodepinning or a distributed fs would be required

scripts are very rough right now - i get a go cli in place as soon as the deployments are working

rename default.env to .env.(prod/dev/test)
and run setup (prod/dev/test) 

- like ./setup.sh prod
sources variables from .env.prod
and replaces the nessesary deployment files 


interconnect via "SERVICENAME".NAMESPACE.svc.cluster.local

aka: mariadb-service.default.svc.cluster.local
## Features:

* [x] Lightweight fully certified cncf Kubernetes Distro (K3s - under 500 mb ram) should work with slight modifications on any kubernetes cluster
* [x] Traefik 2.x with Letsencrypt auto SSL
* [] Mysql
* [] Magento2.3 php-7.3
* [x] MailHog
* [] PersistentVolumes
* [] Redis For Sessions
* [] Redis for Cache
* [] ElasticSearch
* [x] PHPMyAdmin

!!!DO NOT USE RIGHT NOW UNLESS YOU KNOW EXACTLY WHAT YOU ARE DOING

please *WATCH* or *STAR* the repo for updates!!

security consideration

iptables on host/s or cloud firewall 

block 8080 - traefik admin for dashboard 
