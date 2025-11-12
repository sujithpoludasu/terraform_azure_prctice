terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "COMMON_RG1"
      storage_account_name = "azureb555storage"
      container_name       = "azureb55storagecontainer"
      key                  = "terraform_terrclass1.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}
