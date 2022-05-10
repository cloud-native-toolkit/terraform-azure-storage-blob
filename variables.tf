#General
variable "resource_group_name" {
  type        = string
  description = "The name of the Azure resource group where the VPC has been provisioned"
}

variable "region" {
  type        = string
  description = "The Azure location where the load balancer will be installed"
}

# Storage Account
variable "storage_account_name" {
  type        = string
  description = "The name of the Azure Storage Account"
}

variable "storage_account_tier" {
  type        = string
  description = "The Tier of the Azure Storage Account"
  default     = "Standard"
}

variable "replication_type" {
  type        = string
  description = "The type of the Replication for Azure Storage Account"
  default     = "LRS"
}

# Container
variable "container_name" {
  type        = string
  description = "The name of the Azure Blob Storage Container"
  default     = ""
}

variable "container_access_type" {
  type        = string
  description = "The type of access for Azure Storage Container"
  default     = "private"
}

# BLOB File
variable "blob_file_name" {
  type        = string
  description = "The name of the Blob File"
  default     = ""
}

variable "blob_file_type" {
  type        = string
  description = "The type of Blob for File"
  default     = "Block"
}

variable "blob_file_sourcefile_name" {
  type        = string
  description = "The name of the Source file"
  default     = ""
}