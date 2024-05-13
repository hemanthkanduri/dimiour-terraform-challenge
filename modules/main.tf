provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = var.subscription_id
  client_id                  = var.client_id
  client_secret              = var.client_secret
  tenant_id                  = var.tenant_id
}

module "resourceGroup" {
  source = "./modules/ResourceGroup"
  name = var.RGName
  location = var.location
}

module "virtualnetwork" {
  source = "./modules/VirtualNetwork"
  RGname = module.resourceGroup.name
  location = var.location
  name = var.vnetname
}

module "appservice" {
    source = "./modules/AppService"
    aspname = var.aspname
    webappname = var.asp-app-name 

  }