resource "azurerm_role_assignment" "example" {
  scope                = azurerm_resource_group.example.id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_kubernetes_cluster.example.identity.0.principal_id
}
