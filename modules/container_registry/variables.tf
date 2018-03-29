variable "create_registry" {
  description = "Boolean to build a container resgistry with this AKS cluster"
  default     = false
}

variable "registry_name" {
  description = "(Required) Specifies the name of the Container Registry. Changing this forces a new resource to be created."
  default     = "myACR"
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Container Registry."
}

variable "sku" {
  description = "(Optional) The SKU name of the the container registry. Possible values are Classic (which was previously Basic), Basic, Standard and Premium."
  default     = "Basic"
}

variable "tags" {
  description = "(Optional) Map of tags and values to apply to the resource"
  type        = "map"
  default     = {}
}
