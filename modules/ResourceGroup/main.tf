

# Resource Group where the Azure resources will be deployed
resource "azurerm_resource_group" "dimiourrg" {
  name     = var.RGName
  location = var.location
}


