output "storage_blob_id" {
  description = "The id of the Azure Storage Blob File"
  value       = var.blob_file_name != "" ? azurerm_storage_blob.blob_file[0].id : null
  depends_on  = [azurerm_storage_blob.blob_file]
}

output "storage_blob_url" {
  description = "The URL of the Azure Storage Blob File"
  value       = var.blob_file_name != "" ? azurerm_storage_blob.blob_file[0].url : null
  depends_on  = [azurerm_storage_blob.blob_file]
}