resource "azurerm_windows_virtual_machine" "sandbox-windows-vm1" {
  name                = join("-", [lower(var.ProjectName), "WindowsVM1"])
  resource_group_name = azurerm_resource_group.sandbox-rg.name
  location            = azurerm_resource_group.sandbox-rg.location
  admin_username      = var.AdminUsername
  admin_password      = var.AdminPassword
  size                = "Standard_F2"
  network_interface_ids = [
    azurerm_network_interface.sandbox-windows-vm1-nic.id,
  ]

  os_disk {
    name                 = join("-", [lower(var.ProjectName), "WindowsVM1", "osdisk"])
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
