resource "azurerm_subnet" "sandbox-subnet1" {
  name                 = join("-", [lower(var.ProjectName), "subnet1"])
  resource_group_name  = azurerm_resource_group.sandbox-rg.name
  virtual_network_name = azurerm_virtual_network.sandbox-vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
