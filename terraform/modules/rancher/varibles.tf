variable "prefix" {
  default = "example-rancher"
}

variable "cidr" {
  default = "10.1.0.0/24"
}

variable "ssh_key" {
   type = string
   default = "~/.ssh/id_ed25519_tf"
}

variable "kubernetes_version" {
  default = "v1.20.8-rancher1-1"
}
