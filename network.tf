resource "azurerm_role_assignment" "example" {
  scope                = var.aks_subnet.id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_kubernetes_cluster.aks_rs.identity.0.principal_id
}
