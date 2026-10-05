data "azurerm_network_security_group" "nsg" {
  name                = "dev-nsg1-001"
  resource_group_name = "dev-rg1-001"
}

data "azurerm_subnet" "subnet" {
  name                 = "dev-subnet1-001"
  virtual_network_name = "dev-vnet-001"
  resource_group_name  = "dev-rg1-001"
}