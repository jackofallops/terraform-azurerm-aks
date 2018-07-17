################################
## Azure system configuration ##
################################

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default     = "westeurope"
}

###############################
## AKS cluster configuration ##
###############################

variable "cluster_name" {
  description = "Name for this cluster"
  default     = "myakscluster"
}

variable "k8s_version" {
  description = "Version of Kubernetes to install on the cluster - see `az aks get-versions --location [location] for valid values`"
  default     = "1.8.7"
}

variable "dns_prefix" {
  description = "(Optional) DNS prefix specified when creating the managed cluster."
  default     = ""
}

variable "sp_client_id" {
  description = <<EOL
  Service Principal ID with permissions to manage resources in the target subscription
  Note: this should be defined as either an environment variable or an external var-file reference and not stored with the code base
EOL

  //  default = "00000000-0000-0000-0000-000000000000"
  default = "please-configure-sp-details"
}

variable "sp_client_secret" {
  description = <<EOL
  Service Principal password with permissions to manage resources in the target subscription
  Note: this should be defined as either an environment variable or an external var-file reference and not stored with the code base
EOL

  default = "000000000000000000000000000000000000000000000="
}

#################################
## Node / worker configuration ##
#################################

variable "agent_prefix" {
  description = "DNS name prefix for the worker nodes (aka minions)"
  default     = "minion"
}

variable "agent_vm_sku" {
  description = "Azure VM SKU for the agent/worker nodes"
  default     = "Standard_DS2_v2"
}

variable "node_os_disk_size_gb" {
  description = "Size in GB of the node's OS disks (default 30)"
  default     = 30
}

variable "node_count" {
  description = "Number of worker nodes to create - defaults to 3"
  default     = 3
}

variable "agent_admin_user" {
  description = "Admin username for the first user created on the worker nodes"
  default     = "azureuser"
}

variable "public_key_data" {
  description = "Public key to install for SSH to the nodes - defaults to the running user's .ssh/id_rsa.pub file"
  default     = ""
}

######################################
## Container Registry configuration ##
######################################

variable "create_container_registry" {
  description = "Should a container registry be created with the AKS cluster (true / false)"
  default     = "false"
}

variable "container_registry_rg" {
  description = "(Optional) Name of the resource group into which the Container Registry (if used) will be created"
  default     = ""
}

variable "container_registry_tags" {
  description = "Map of tags to apply to the container registry"
  type        = "map"
  default     = {}
}

variable "container_registry_sku" {
  description = "SKU for the container registry - one of Basic, Standard, Premium"
  default     = "Basic"
}

variable "container_registry_name" {
  description = "Name for the container registry - will generate one from the name of the AKS cluster if left empty"
  default     = ""
}

########################
## provisioner config ##
########################

variable "nginx_deployment_name" {
  description = "Kubernetes deployment name for the ingress controller"
  default     = "ingress-nginx"
}

variable "cert_manager_deployment_name" {
  description = "Kubernetes deployment name for the certificate manager"
  default     = "certifcate-manager"
}

variable "ingress_controller_namespace" {
  description = "Kubernetes namespace the ingress controller will be deployed into"
  default     = "default"
}
