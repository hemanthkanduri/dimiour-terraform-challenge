variable "aspname" {
  type = string
}

variable "asp-app-name" {
  type = string
}

variable "aspslotname" {
  type = string
}

variable "RGName" {
 type = string
 default = ""
  
}

variable "location" {
    type = string
    description = "Location of RG"
  
}

variable "app_sku" {
  type = string
  description = "SKU tier of the App Service (e.g., FREE, B1)"
}
