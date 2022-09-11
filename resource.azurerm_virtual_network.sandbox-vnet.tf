resource "azurerm_virtual_network" "sandbox-vnet" {
  name                = join("-", [lower(var.ProjectName), "vnet"])
  location            = azurerm_resource_group.sandbox-rg.location
  resource_group_name = azurerm_resource_group.sandbox-rg.name
  address_space       = ["10.0.0.0/16"]
  # dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = {
    environment = var.EnvironmentName
    project     = var.ProjectName
  }
}
