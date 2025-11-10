resource "azurerm_resource_group" "DEV_RG1" {
  name     = "DEV_RG1"
  location = "eastus2"
}
resource "azurerm_resource_group" "COMMON_RG1" {
  name     = "COMMON_RG1"
  location = "westus2"
}

