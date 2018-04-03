resource "azurerm_resource_group" "container_registry_rg" {
  location = "${var.location}"
  name     = "${var.registry_name}-rg"
}

resource "azurerm_container_registry" "container_registry" {
  count               = "${var.create_registry == "true" ? 1 : 0 }"
  name                = "${var.registry_name}"
  location            = "${azurerm_resource_group.container_registry_rg.location}"
  resource_group_name = "${azurerm_resource_group.container_registry_rg.name}"
  sku                 = "${var.sku}"

  tags = "${var.tags}"

  lifecycle {
//    prevent_destroy = true
  }
}
