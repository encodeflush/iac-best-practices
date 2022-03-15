terraform {
  required_providers {
    template = {
      source = "hashicorp/template"
    }
    local = {
      source  = "hashicorp/local"
    }
    null = {
      source = "hashicorp/null"
    }
    rancher2 = {
      source = "rancher/rancher2"
    }
    rke = {
      source = "rancher/rke"
    }
  }
  required_version = "~> 1.1.0"
}
