output "rke_state" {
  sensitive = true
  value = rke_cluster.cluster.rke_state
}

output "kubeconfig" {
  sensitive = true
  value = rke_cluster.cluster.kube_config_yaml
}
