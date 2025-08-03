terraform {
  required_version = ">= 1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  college-id = "moha1173"
}
# Resource Group for Terraform backend
resource "azurerm_resource_group" "rg" {
  name     = "${local.college-id}-githubactions-rg"
  location = "Canada Central"
}

# Storage Account for state files
resource "azurerm_storage_account" "storage" {
  name                     = "${local.college-id}githubactions"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
}

# Container for tfstate
resource "azurerm_storage_container" "container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}
