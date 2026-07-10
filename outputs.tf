output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "spoke1_vm_name" {
  value = azurerm_linux_virtual_machine.spoke1.name
}

output "spoke2_vm_name" {
  value = azurerm_linux_virtual_machine.spoke2.name
}

output "spoke1_private_ip" {
  value = azurerm_network_interface.spoke1.private_ip_address
}

output "spoke2_private_ip" {
  value = azurerm_network_interface.spoke2.private_ip_address
}

output "firewall_private_ip" {
  value = azurerm_firewall.main.ip_configuration[0].private_ip_address
}

output "log_analytics_workspace_name" {
  value = azurerm_log_analytics_workspace.main.name
}

output "flow_log_storage_account" {
  value = azurerm_storage_account.flowlogs.name
}