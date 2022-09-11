resource "azurerm_subnet_network_security_group_association" "subnet1-nsg-association" {
  subnet_id                 = azurerm_subnet.sandbox-subnet1.id
  network_security_group_id = azurerm_network_security_group.sandbox-nsg.id
}
