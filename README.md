# Azure Key Vault module

This repo contains a [Terraform](https://www.terraform.io/) module that defines an Azure Key Vault.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.encryption](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_monitor_diagnostic_setting.key_vault_diagnostics](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_log_analytics_workspace.logs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/log_analytics_workspace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_rbac_authorization"></a> [enable\_rbac\_authorization](#input\_enable\_rbac\_authorization) | Enable RBAC for accessing key vault objects, rather than access policy | `bool` | `true` | no |
| <a name="input_enabled_for_deployment"></a> [enabled\_for\_deployment](#input\_enabled\_for\_deployment) | Enable VMs to access key vault for certificates | `bool` | `true` | no |
| <a name="input_enabled_for_disk_encryption"></a> [enabled\_for\_disk\_encryption](#input\_enabled\_for\_disk\_encryption) | Enable Azure Disk Encryption service to access key vault | `bool` | `true` | no |
| <a name="input_enabled_for_template_deployment"></a> [enabled\_for\_template\_deployment](#input\_enabled\_for\_template\_deployment) | Enable ARM template deplouyment service to access key vault | `bool` | `true` | no |
| <a name="input_ip_rules"></a> [ip\_rules](#input\_ip\_rules) | List of IP addresses or CIDR blocks to add to ACL | `list(string)` | `[]` | no |
| <a name="input_key_vault_name"></a> [key\_vault\_name](#input\_key\_vault\_name) | Name of Key Vault to deploy | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location to deploy resources | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | Name of Log Analytics Workspace to send diagnostics | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_resource_group_name"></a> [log\_analytics\_workspace\_resource\_group\_name](#input\_log\_analytics\_workspace\_resource\_group\_name) | Resource Group of Log Analytics Workspace to send diagnostics | `string` | n/a | yes |
| <a name="input_network_acl_bypass"></a> [network\_acl\_bypass](#input\_network\_acl\_bypass) | Allow trusted Azure services to bypass network ACLs | `string` | `"None"` | no |
| <a name="input_network_acl_default_action"></a> [network\_acl\_default\_action](#input\_network\_acl\_default\_action) | Default action to take if no rule match from IPs or subnets | `string` | `"Deny"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the Resource Group to deploy to | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to resources | `map(string)` | n/a | yes |
| <a name="input_virtual_network_subnet_ids"></a> [virtual\_network\_subnet\_ids](#input\_virtual\_network\_subnet\_ids) | List of subnet resource IDs to add to ACL | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_enable_rbac_authorization"></a> [key\_vault\_enable\_rbac\_authorization](#output\_key\_vault\_enable\_rbac\_authorization) | Is RBAC authorization enabled on key vault objects |
| <a name="output_key_vault_enabled_for_deployment"></a> [key\_vault\_enabled\_for\_deployment](#output\_key\_vault\_enabled\_for\_deployment) | Is Key Vault enabled for VM cert retrieval |
| <a name="output_key_vault_enabled_for_disk_encryption"></a> [key\_vault\_enabled\_for\_disk\_encryption](#output\_key\_vault\_enabled\_for\_disk\_encryption) | Is Key Vault enabled for disk encryption |
| <a name="output_key_vault_enabled_for_template_deployment"></a> [key\_vault\_enabled\_for\_template\_deployment](#output\_key\_vault\_enabled\_for\_template\_deployment) | Is key vault enabled for ARM template deployment |
| <a name="output_key_vault_id"></a> [key\_vault\_id](#output\_key\_vault\_id) | Resource ID of the Key Vault |
| <a name="output_key_vault_tenant_id"></a> [key\_vault\_tenant\_id](#output\_key\_vault\_tenant\_id) | AAD tenant ID of the Key Vault |
| <a name="output_key_vault_uri"></a> [key\_vault\_uri](#output\_key\_vault\_uri) | URI ov the Key Vault |
<!-- END_TF_DOCS -->