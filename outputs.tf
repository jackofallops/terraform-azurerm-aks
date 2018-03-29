output "resource_group" {
  value = "${azurerm_resource_group.aks_resource_group.name}"
}

output "cluster_name" {
  value = "${azurerm_kubernetes_cluster.aks_managed_cluster.name}"
}

output "container_registry_name" {
  value = "${module.container_registry.container_registry_name}"
}

output "acr_fqdn" {
  value = "${module.container_registry.fqdn}"
}
