module "test_aks" {
  source           = "../"
  sp_client_id     = "${var.sp_client_id}"
  sp_client_secret = "${var.sp_client_secret}"

}
