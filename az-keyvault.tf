terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.95"
    }
  }

  required_version = "~> 1.1.5"
}

data "azurerm_log_analytics_workspace" "logs" {
  name                = var.log_analytics_workspace_name
  resource_group_name = var.log_analytics_workspace_resource_group_name
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "encryption" {
  name                        = var.key_vault_name
  location                    = azurerm_resource_group.vault.location
  resource_group_name         = azurerm_resource_group.vault.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = true
  enable_rbac_authorization   = false
  sku_name                    = "standard"
  tags                        = var.tags
}

resource "azurerm_monitor_diagnostic_setting" "key_vault_diagnostics" {
  name                       = "security-logging"
  target_resource_id         = azurerm_key_vault.encryption.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.logs.id

  log {
    category = "AuditEvent"
    enabled  = true

    retention_policy {
      enabled = true
      days    = 365
    }
  }

  log {
    category = "AzurePolicyEvaluationDetails"
    enabled  = true

    retention_policy {
      enabled = true
      days    = 365
    }
  }

  metric {
    category = "AllMetrics"
    enabled  = true

    retention_policy {
      enabled = true
      days    = 365
    }
  }
}
