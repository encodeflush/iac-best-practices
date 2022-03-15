resource "rke_cluster" "cluster" {
  kubernetes_version = var.kubernetes_version
  cluster_name = "${var.prefix}-cluster"
  dynamic "nodes" {
    for_each = libvirt_domain.ctrl
    iterator = it
    content {
      address = it.value.network_interface[0].addresses[0]
      user = "ubuntu"
      role = ["etcd","controlplane"]
    }
  }

  dynamic "nodes" {
    for_each = libvirt_domain.node
    iterator = it
    content {
      address = it.value.network_interface[0].addresses[0]
      user = "ubuntu"
      role = ["worker"]
    }
  }
  
  ssh_key_path = var.ssh_key

  # Disable port check validation between nodes
  disable_port_check = false

  depends_on = [null_resource.wait-for-docker]
}

resource "local_sensitive_file" "kube_cluster_yaml" {
  filename = "./kube_config_cluster.yml"
  content = rke_cluster.cluster.kube_config_yaml
}

resource "null_resource" "wait-for-docker" {
  provisioner "local-exec" {
    command = "sleep 180"
  }
}
