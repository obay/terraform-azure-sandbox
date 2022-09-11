resource "azurerm_network_security_group" "sandbox-nsg" {
  name                = join("-", [lower(var.ProjectName), "nsg"])
  location            = azurerm_resource_group.sandbox-rg.location
  resource_group_name = azurerm_resource_group.sandbox-rg.name

  tags = {
    environment = var.EnvironmentName
    project     = var.ProjectName
  }
}
