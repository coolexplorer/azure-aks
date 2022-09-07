resource "azurerm_kubernetes_cluster" "aks-rs" {
  name                = "${var.name_prefix}-${random_string.name_postfix.result}"
  location            = var.location
  resource_group_name = var.aks_rg.name
  dns_prefix          = var.aks_dns_prefix

  kubernetes_version                = var.kubernetes_version
  role_based_access_control_enabled = true

  default_node_pool {
    name       = var.worker_node_pool_name
    node_count = var.worker_node_count
    vm_size    = var.worker_node_vm_size

    enable_node_public_ip = false

    vnet_subnet_id = var.ask_subnet.id

    tags = {
      createdBy   = var.owner
      environment = "test"
    }
  }

  identity {
    type = var.identity
  }

  network_profile {
    network_plugin    = var.aks_network_plugin
    load_balancer_sku = "standard"
    outbound_type     = "userDefinedRouting"
  }

  tags = {
    createdBy   = var.owner
    environment = "test"
  }
}
