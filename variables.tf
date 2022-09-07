variable "location" {
  type        = string
  description = "Azure Region name"
  default     = "Canada Central"
}

variable "name_prefix" {
  type        = string
  description = "The virtual machine name's prefix"
  default     = "test-vm"
}

variable "owner" {
  type        = string
  description = "The owner name"
  default     = "Allen"
}

# Kubernetes
variable "aks_rg" {
  type        = any
  description = "The resource group object for the Kubernets resources"
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
  default     = "work-node-pool1"
  description = "The work node pool name"
}

variable "identity" {
  type    = string
  default = "SystemAssigned"
}

variable "aks_dns_prefix" {
  type    = string
  default = "testaks1"
}

variable "kubernetes_version" {
  type    = string
  default = "1.22.6"
}

# Network
variable "aks_subnet" {
  type        = any
  description = "The subnet object for AKS"
}

variable "aks_network_plugin" {
  type        = string
  description = "The network plugin for AKS"
  default     = "kubenet"
}
