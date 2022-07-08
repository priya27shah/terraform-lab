resource "azurerm_resource_group" "example" {
  name     = "vnet-rps-lab-1"
  location = "eastUS"
}

resource "azurerm_virtual_network" "example-1" {
  name                = "vnet-rps-lab-1"
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.1.0/24"]
  location            = azurerm_resource_group.example.location
}

resource "azurerm_virtual_network" "example-2" {
  name                = "vnet-rps-lab-2"
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.30.0.0/20"]
  location            = azurerm_resource_group.example.location
}

resource "azurerm_virtual_network_peering" "example-1" {
  name                      = "vnet-peer-1-2-rps-lab-2"
  resource_group_name       = azurerm_resource_group.example.name
  virtual_network_name      = azurerm_virtual_network.example-1.name
  remote_virtual_network_id = azurerm_virtual_network.example-2.id
}

resource "azurerm_virtual_network_peering" "example-2" {
  name                      = "vnet-peer-2-1-rps-lab-2"
  resource_group_name       = azurerm_resource_group.example.name
  virtual_network_name      = azurerm_virtual_network.example-2.name
  remote_virtual_network_id = azurerm_virtual_network.example-1.id
}
