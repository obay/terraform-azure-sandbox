resource "azurerm_subnet" "AzureBastionSubnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.sandbox-rg.name
  virtual_network_name = azurerm_virtual_network.sandbox-vnet.name
  address_prefixes     = ["10.0.255.0/27"]
}
