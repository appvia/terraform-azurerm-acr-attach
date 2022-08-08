
variable "cluster_name" {
  description = "The name of the cluster we are attaching the cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group the cluster is in"
  type        = string
}

variable "container_registry_id" {
  description = "The full resource id of the container registry i.e /subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/Microsoft.ContainerRegistry/registries/<registry_name>"
  type        = string
}

