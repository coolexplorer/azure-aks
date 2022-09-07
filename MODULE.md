<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.20 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.20 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.aks_rs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_role_assignment.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [random_string.name_postfix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aks_dns_prefix"></a> [aks\_dns\_prefix](#input\_aks\_dns\_prefix) | n/a | `string` | `"testaks1"` | no |
| <a name="input_aks_network_plugin"></a> [aks\_network\_plugin](#input\_aks\_network\_plugin) | The network plugin for AKS | `string` | `"kubenet"` | no |
| <a name="input_aks_rg"></a> [aks\_rg](#input\_aks\_rg) | The resource group object for the Kubernets resources | `any` | n/a | yes |
| <a name="input_aks_subnet"></a> [aks\_subnet](#input\_aks\_subnet) | The subnet object for AKS | `any` | n/a | yes |
| <a name="input_identity"></a> [identity](#input\_identity) | n/a | `string` | `"SystemAssigned"` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | n/a | `string` | `"1.22.6"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure Region name | `string` | `"Canada Central"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | The AKS name's prefix | `string` | `"test-aks"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner name | `string` | `"Allen"` | no |
| <a name="input_worker_node_count"></a> [worker\_node\_count](#input\_worker\_node\_count) | The worker node count | `number` | `1` | no |
| <a name="input_worker_node_pool_name"></a> [worker\_node\_pool\_name](#input\_worker\_node\_pool\_name) | The work node pool name | `string` | `"work-node-pool1"` | no |
| <a name="input_worker_node_vm_size"></a> [worker\_node\_vm\_size](#input\_worker\_node\_vm\_size) | The work node count | `string` | `"Standard_D2_v2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | n/a |
| <a name="output_kube_config"></a> [kube\_config](#output\_kube\_config) | n/a |
<!-- END_TF_DOCS -->