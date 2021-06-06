module "hpdbaas_mongodb" {
  source = "./module"

  ibmcloud_api_key    = var.ibmcloud_api_key
  resource_group_name = module.resource_group.name
  region              = var.region
  name_prefix         = "${var.name_prefix}_2"
  hpcs_instance_id    = module.hpcs_key.kms_id
  hpcs_key            = module.hpcs_key.id
  cluster_name        = "test"
  admin_name          = "admin"
  password            = "M4C0mpl3xP@ssw0rd"
}
