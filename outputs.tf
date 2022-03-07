output "key_vault_id" {
  value       = azurerm_key_vault.encryption.id
  description = "Resource ID of the Key Vault"
}

output "key_vault_uri" {
  value       = azurerm_key_vault.encryption.vault_uri
  description = "URI ov the Key Vault"
}

output "key_vault_tenant_id" {
  value       = azurerm_key_vault.encryption.tenant_id
  description = "AAD tenant ID of the Key Vault"
}

output "key_vault_enabled_for_deployment" {
  value       = azurerm_key_vault.encryption.enabled_for_deployment
  description = "Is Key Vault enabled for VM cert retrieval"
}

output "key_vault_enabled_for_disk_encryption" {
  value       = azurerm_key_vault.encryption.enabled_for_disk_encryption
  description = "Is Key Vault enabled for disk encryption"
}

output "key_vault_enabled_for_template_deployment" {
  value       = azurerm_key_vault.encryption.enabled_for_template_deployment
  description = "Is key vault enabled for ARM template deployment"
}

output "key_vault_enable_rbac_authorization" {
  value       = azurerm_key_vault.encryption.enable_rbac_authorization
  description = "Is RBAC authorization enabled on key vault objects"
}
