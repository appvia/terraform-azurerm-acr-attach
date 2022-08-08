
data "azurerm_kubernetes_cluster" "this" {
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_role_assignment" "attach_acr" {
  scope                = var.container_registry_id
  role_definition_name = "AcrPull"
  principal_id         = data.azurerm_kubernetes_cluster.this.kubelet_identity[0].object_id
}
