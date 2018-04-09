output "k8s_resource_group" {
  value = "${module.test_aks.resource_group}"
}

output "k8s_clustername" {
  value = "${module.test_aks.cluster_name}"
}