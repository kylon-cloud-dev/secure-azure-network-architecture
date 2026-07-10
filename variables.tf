variable "yourname" {
  description = "Short lowercase name used to make Azure resources unique."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.yourname))
    error_message = "Use lowercase letters, numbers, and hyphens only."
  }
}

variable "location" {
  description = "Azure region for the lab."
  type        = string
  default     = "eastus"
}

variable "admin_username" {
  description = "Admin username for the Linux VMs."
  type        = string
  default     = "labadmin"
}

variable "admin_password" {
  description = "Admin password for the Linux VMs."
  type        = string
  sensitive   = true
}

variable "storage_suffix" {
  description = "Lowercase letters/numbers to make the storage account globally unique."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{4,8}$", var.storage_suffix))
    error_message = "Use 4 to 8 lowercase letters or numbers."
  }
}

variable "tags" {
  description = "Tags applied to lab resources."
  type        = map(string)
  default = {
    project     = "secure-azure-network-architecture"
    environment = "lab"
    managed_by  = "terraform"
  }
}