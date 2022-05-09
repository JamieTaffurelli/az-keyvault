variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group to deploy to"
}

variable "location" {
  type        = string
  description = "Location to deploy resources"
}

variable "key_vault_name" {
  type        = string
  description = "Name of Key Vault to deploy"
}

variable "enabled_for_deployment" {
  type        = bool
  default     = true
  description = "Enable VMs to access key vault for certificates"
}

variable "enabled_for_disk_encryption" {
  type        = bool
  default     = true
  description = "Enable Azure Disk Encryption service to access key vault"
}

variable "enabled_for_template_deployment" {
  type        = bool
  default     = true
  description = "Enable ARM template deplouyment service to access key vault"
}

variable "enable_rbac_authorization" {
  type        = bool
  default     = true
  description = "Enable RBAC for accessing key vault objects, rather than access policy"
}

variable "network_acl_bypass" {
  type    = string
  default = "None"
  validation {
    condition     = contains(["AzureServices", "None"], var.network_acl_bypass)
    error_message = "Bypass must be AzureServices or None."
  }
  description = "Allow trusted Azure services to bypass network ACLs"
}

variable "network_acl_default_action" {
  type    = string
  default = "Deny"

  validation {
    condition     = contains(["Allow", "Deny"], var.network_acl_default_action)
    error_message = "Bypass must be Allow or Deny."
  }
  description = "Default action to take if no rule match from IPs or subnets"
}

variable "ip_rules" {
  type        = list(string)
  default     = []
  description = "List of IP addresses or CIDR blocks to add to ACL"
}

variable "virtual_network_subnet_ids" {
  type        = list(string)
  default     = []
  description = "List of subnet resource IDs to add to ACL"
}

variable "log_analytics_workspace_name" {
  type        = string
  description = "Name of Log Analytics Workspace to send diagnostics"
}

variable "log_analytics_workspace_resource_group_name" {
  type        = string
  description = "Resource Group of Log Analytics Workspace to send diagnostics"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
}
