resource "azurerm_kubernetes_cluster" "default" {
  name                = "myakscluster"
  location            = azurerm_resource_group.mydemo.location
  resource_group_name = azurerm_resource_group.mydemo.name
  dns_prefix          = "myaks-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  role_based_access_control {
    enabled = true
  }

  tags = {
    environment = "Demo"
  }
}
