resource "azurerm_public_ip" "AzureBastionPIP" {
  name                = join("-", [lower(var.ProjectName), "AzureBastionPIP"])
  location            = azurerm_resource_group.sandbox-rg.location
  resource_group_name = azurerm_resource_group.sandbox-rg.name
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {
    environment = var.EnvironmentName
    project     = var.ProjectName
  }
}
