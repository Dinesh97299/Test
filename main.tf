resource "azurerm_virtual_network" "vnet" {
  name                = "vnet_01"
  location            = "west europe"
  resource_group_name = "rg_09"
  address_space       = ["10.0.0.0/16"]
  depends_on = [ address_space ]
  dns_servers = [ abs() ]
}