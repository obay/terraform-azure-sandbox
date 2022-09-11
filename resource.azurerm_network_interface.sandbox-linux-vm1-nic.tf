resource "azurerm_network_interface" "sandbox-linux-vm1-nic" {
  name                = join("-", [lower(var.ProjectName), "LinuxVM1-nic"])
  resource_group_name = azurerm_resource_group.sandbox-rg.name
  location            = azurerm_resource_group.sandbox-rg.location

  ip_configuration {
    name                          = join("-", [lower(var.ProjectName), "LinuxVM1-nic", "ipconfig"])
    subnet_id                     = azurerm_subnet.sandbox-subnet1.id
    private_ip_address_allocation = "Dynamic"
  }
}