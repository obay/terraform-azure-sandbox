resource "azurerm_bastion_host" "sandbox-bastion" {
  name                = join("-", [lower(var.ProjectName), "AzureBastion"])
  location            = azurerm_resource_group.sandbox-rg.location
  resource_group_name = azurerm_resource_group.sandbox-rg.name

  ip_configuration {
    name                 = join("-", [var.ProjectName, "AzureBastion-IPConfig"])
    subnet_id            = azurerm_subnet.AzureBastionSubnet.id
    public_ip_address_id = azurerm_public_ip.AzureBastionPIP.id
  }

  tags = {
    environment = var.EnvironmentName
    project     = var.ProjectName
  }
}
