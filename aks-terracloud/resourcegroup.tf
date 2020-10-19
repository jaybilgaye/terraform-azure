resource "azurerm_resource_group" "mydemo" {
  name     = "resource-group-mydemo"
  location = var.location
  tags = {
      env = "resource-group-mydemo"
  }
}
