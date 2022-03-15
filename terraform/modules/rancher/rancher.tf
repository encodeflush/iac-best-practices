resource "rancher2_bootstrap" "admin" {
  provider = rancher2.bootstrap
  initial_password = ""
  password = ""
}
