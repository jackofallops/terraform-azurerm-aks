output "name" {
  value = "${azurerm_container_registry.container_registry.*.name}"
}

output "fqdn" {
  value = "${azurerm_container_registry.container_registry.*.login_server}"
}

output "resouce_group_name" {
  value = "${azurerm_resource_group.container_registry_rg.name}"
}

output "id" {
  value = "${azurerm_container_registry.container_registry.*.id}"
}
