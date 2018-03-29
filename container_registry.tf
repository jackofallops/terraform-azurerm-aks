module "container_registry" {
  source              = "./modules/container_registry"
  create_registry     = "${var.create_container_registry}"
  registry_name       = "${var.container_registry_name == "" ? "${var.cluster_name}acr" : var.container_registry_name}"
  resource_group_name = "${var.container_registry_rg == "" ? azurerm_resource_group.aks_resource_group.name : var.container_registry_rg}"
  location            = "${var.location}"
  sku                 = "${var.container_registry_sku}"
  tags                = "${var.container_registry_tags}"
}
