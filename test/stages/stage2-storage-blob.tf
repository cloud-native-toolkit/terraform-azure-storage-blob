module "azure-storage-blob" {
  source               = "./module"
  resource_group_name  = module.resource_group.name
  region               = var.region
  storage_account_name = "stgaccvalidate"
}
