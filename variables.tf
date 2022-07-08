# Azure Resource Group Name 
variable "resource_group_name" {
  type = string
  default = "rg-default"  
}

# Azure Resources Location
variable "resource_group_location" {
  type = string
  default = "eastus2"  
}

# Virtual Network
variable "vnet_name" {
  type = string
  default = "vnet-default"
}
variable "vnet_address_space" {
  type = list(string)
  default = ["10.0.0.0/16"]
}
