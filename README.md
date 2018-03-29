# terraform-azurerm-aks
module to create an aks cluster with optional container registry and stand up an initial ingress controller (nginx) that gets LetsEncrypt certs.



## Dependencies  
(helm repo add stable https://kubernetes-charts.storage.googleapis.com)
- stable/ingress-nginx
- stable/cert-manager

