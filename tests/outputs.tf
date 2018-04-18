output "k8s_resource_group" {
  value = "${module.test_aks.resource_group}"
}

output "k8s_clustername" {
  value = "${module.test_aks.cluster_name}"
}

output "acr_hostname" {
  value = "${module.test_aks.container_registry_name[0]}"
}

output "acr_fqdn" {
  value = "${module.test_aks.container_registry_fqdn[0]}"
}

output "acr_resource_group" {
  value = "${module.test_aks.container_registry_resource_group}"
}
