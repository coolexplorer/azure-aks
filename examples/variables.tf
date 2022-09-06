variable "location" {
  type        = string
  description = "Azure Region name"
  default     = "Canada Central"
}

# AKS
variable "kubernetes_version" {
  type    = string
  default = "1.22.6"
}

variable "aks_rg_name" {
  type        = string
  description = "The aks resource group name"
}

variable "worker_node_vm_size" {
  type        = string
  default     = "Standard_D2_v2"
  description = "The work node count"
}

variable "worker_node_count" {
  type        = number
  default     = 1
  description = "The worker node count"
}

variable "worker_node_pool_name" {
  type        = string
  default     = "work-node-pool"
  description = "The work node pool name"
}

variable "identity" {
  type    = string
  default = "SystemAssigned"
}

# Network
variable "aks_vnet_name" {
  type        = string
  description = "The aks virtual network name"
}

variable "aks_subnet_name" {
  type        = string
  description = "The aks subnet name"
  default     = "subnet1"
}

variable "aks_network_plugin" {
  type        = string
  description = "The network plugin for AKS"
  default     = "kubenet"
}
