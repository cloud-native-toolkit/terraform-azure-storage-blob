resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.region
  account_tier             = var.storage_account_tier
  account_replication_type = var.replication_type
}

resource "azurerm_storage_container" "storage_container" {
  count                 = var.container_should_create ? 1 : 0
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "blob_file" {
  count                  = var.blob_file_should_create ? 1 : 0
  name                   = var.blob_file_name
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = azurerm_storage_container.storage_container[0].name
  type                   = var.blob_file_type
  source                 = var.blob_file_sourcefile_name
}