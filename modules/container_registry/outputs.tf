output "container_registry_name" {
  value = "${azurerm_container_registry.container_registry.*.name}"
}

output "fqdn" {
  value = "${azurerm_container_registry.container_registry.*.login_server}"
}
