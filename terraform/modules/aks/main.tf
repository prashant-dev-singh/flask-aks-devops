resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = "aksdemo"

  default_node_pool {
    name       = "nodepool"
    node_count = 1
    vm_size = "Standard_D2s_v3"  # 💸 cheapest
  }

  identity {
    type = "SystemAssigned"
  }
}
