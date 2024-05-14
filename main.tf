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
  RGName = var.RGName
  location = var.location
}

module "virtualnetwork" {
  source = "./modules/VirtualNetwork"  
  location = var.location
  vnetname = var.vnetname
  subnetname = var.subnetname
}

module "appservice" {
    source = "./modules/AppService"
    RGName = var.RGName
    aspname = var.aspname   
    app_sku = var.app_sku
    location = var.location
    asp-app-name = var.asp-app-name
    aspslotname = var.aspslotname

  }