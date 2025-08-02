terraform {
  required_version = ">= 1.5"

  backend "azurerm" {
    resource_group_name  = "moha1173-githubactions-rg" # Replace with your RG from tf-backend
    storage_account_name = "moha1173githubactions"     # Replace with your Storage Account name
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
  }

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