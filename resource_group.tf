resource "azurerm_resource_group" "DEV_RG1" {
  name     = "DEV_RG1"
  location = "eastus2"
}
resource "azurerm_resource_group" "COMMON_RG1" {
  name     = "COMMON_RG1"
  location = "westus2"
}

resource "azurerm_storage_account" "azureb555storage" {
  name                     = "azureb555storage"
  resource_group_name      = "COMMON_RG1"
  location                 = "eastus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "azureb55storagecontainer" {
  name                  = "azureb55storagecontainer"
  storage_account_id    = azurerm_storage_account.azureb555storage.id
  container_access_type = "private"
}
