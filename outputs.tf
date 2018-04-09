output "resource_group" {
  value = "${azurerm_resource_group.aks_resource_group.name}"
}

output "cluster_name" {
  value = "${azurerm_kubernetes_cluster.aks_managed_cluster.name}"
}

output "container_registry_name" {
  value = "${module.container_registry.name}"
}

output "container_registry_fqdn" {
  value = "${module.container_registry.fqdn}"
}

output "container_registry_resource_group" {
  value = "${module.container_registry.resouce_group_name}"
}
