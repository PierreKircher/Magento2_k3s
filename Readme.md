#Scaleable Magento2 Infrastucture on Kubernetes (k3s) with letsencrypt and Traefik2

## Prerequirements

export K3S_KUBECONFIG_MODE="644"
export INSTALL_K3S_EXEC=" --no-deploy servicelb --no-deploy traefik"
curl -sfL https://get.k3s.io | sh -

for more infos on k3s: https://k3s.io/

this setup works for 1 node or multiple nodes 
i personaly run this setup on gcp

rename default.env to .env.(prod/dev/test)
and run setup (prod/dev/test) 

- like ./setup.sh prod
sources variables from .env.prod
and replaces the nessesary deployment files 

## Features:

* Lightweight fully certified cncf Kubernetes Distro (K3s - under 500 mb ram)
* [x] Traefik 2.x with Letsencrypt auto SSL
* [] Mysql
* [] Magento2.3 php-7.3
* [] MailHog
* [] PersistentVolumes
* [] Redis For Sessions
* [] Redis for Cache
* [] ElasticSearch
* [x] PHPMyAdmin

!!!do not use in production yet

security consideration

iptables on host or cloud firewall 

block 8080 - admin port for dashboard / traefik



