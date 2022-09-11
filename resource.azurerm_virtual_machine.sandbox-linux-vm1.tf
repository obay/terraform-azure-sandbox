# Create Virtual Machine
resource "azurerm_virtual_machine" "sandbox-linux-vm1" {
  name                  = join("-", [lower(var.ProjectName), "LinuxVM1"])
  location              = azurerm_resource_group.sandbox-rg.location
  resource_group_name   = azurerm_resource_group.sandbox-rg.name
  network_interface_ids = ["${azurerm_network_interface.sandbox-linux-vm1-nic.id}"]
  vm_size               = "Standard_DS1_v2"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = join("-", [lower(var.ProjectName), "LinuxVM1", "osdisk"])
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = join("-", [lower(var.ProjectName), "LinuxVM1"])
    admin_username = var.AdminUsername
    admin_password = var.AdminPassword
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}
