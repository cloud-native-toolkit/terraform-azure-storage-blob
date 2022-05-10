module "azure-storage-blob" {
  source                    = "./module"
  resource_group_name       = module.resource_group.name
  region                    = var.region
  storage_account_name      = "stgaccvalidate"
  container_name            = "containervalidate"
  blob_file_name            = "variables.tf"
  blob_file_sourcefile_name = "variables.tf"
}
