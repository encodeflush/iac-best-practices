terraform {
  required_providers {
     libvirt = {
      source  = "dmacvicar/libvirt"
      version = "~> 0.6.11"
    }
    template = {
      source = "hashicorp/template"
    }
  }
  required_version = "~> 1.1.0"
}
