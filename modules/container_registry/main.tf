resource "azurerm_container_registry" "container_registry" {
  count               = "${var.create_registry == "true" ? 1 : 0 }"
  name                = "${var.registry_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  sku                 = "${var.sku}"

  tags = "${var.tags}"

  lifecycle {
    prevent_destroy = true
  }
}
