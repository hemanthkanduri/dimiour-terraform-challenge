# Virtual Network
resource "azurerm_virtual_network" "dimiourvnet" {
  name                = var.vnetname
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.RGName
}

# Subnet within the Virtual Network
resource "azurerm_subnet" "dimiourvnet-snet" {
  name                 = var.subnetname
  resource_group_name  = var.RGName
  virtual_network_name = azurerm_virtual_network.dimiourvnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
