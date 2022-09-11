resource "azurerm_resource_group" "sandbox-rg" {
  name     = join("-", [lower(var.ProjectName), "rg"])
  location = var.location

  tags = {
    environment = var.EnvironmentName
    project     = var.ProjectName
  }
}
