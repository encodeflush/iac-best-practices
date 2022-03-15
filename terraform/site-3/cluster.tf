module "nodes" {
  source          = "../modules/libvirt"
  ctrl_node_count = 3
  data_node_count = 3
  lb_node_count   = 1
}

module "rancher" {
  source             = "../modules/rancher"
  kubernetes_version = "v1.20.8-rancher1-1"
  ssh_key            = ""
}
