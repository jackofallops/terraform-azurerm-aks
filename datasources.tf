data "template_file" "Usage_outputs" {
  template = "${file("${path.module}/templates/usage.tpl")}"

  vars {
    cluster_name           = "${azurerm_kubernetes_cluster.aks_managed_cluster.name}"
    cluster_resource_group = "${azurerm_kubernetes_cluster.aks_managed_cluster.resource_group_name}"
    acr_host               = "${module.container_registry.fqdn[0]}"
  }
}
