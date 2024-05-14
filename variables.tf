variable "subscription_id" {
  type        = string
  description = "subscription Value"
  default     = ""
}
variable "client_id" {
  type        = string
  description = "client_id Value"
  default     = ""
}
variable "client_secret" {
  type        = string
  description = "client_secret Value"
  default     = ""
}
variable "tenant_id" {
  type        = string
  description = "tenant_id Value"
  default     = ""
}

variable "vnetname" {
 type = string
 default = ""  
}

variable "location" {
    type = string
    description = "Location of RG"  
}

variable "subnetname" {
  type = string
}

variable "RGName" {
 type = string
 default = ""  
}

variable "aspname" {
  type = string
}

variable "asp-app-name" {
  type = string
}

variable "aspslotname" {
  type = string
}

variable "app_sku" {
  type = string
  description = "SKU tier of the App Service (e.g., FREE, B1)"
}