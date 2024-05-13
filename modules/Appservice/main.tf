resource "azurerm_service_plan" "asp" {
  name                = var.aspname
  location            = var.location
  resource_group_name = var.RGName
  os_type             = "Linux"
  sku_name            = var.app_sku
}

# Define the App Service with staging slots

resource "azurerm_linux_web_app" "dimiourwebapp" {
  name                = var.asp-app-name
  resource_group_name = var.RGName
  location            = var.location
  service_plan_id     = azurerm_service_plan.asp.id  

  site_config {}

  depends_on = [ 
    azurerm_virtual_network.dimiourvnet
   ]
}

resource "azurerm_linux_web_app_slot" "stagingslot" {
  name           = var.aspslotname
  app_service_id = azurerm_linux_web_app.dimiourwebapp.id

  site_config {}
}

resource "azurerm_app_service_virtual_network_swift_connection" "example" {
  app_service_id = azurerm_linux_web_app.dimiourwebapp.id
  subnet_id      = azurerm_subnet.dimiourvnet-snet.id
}