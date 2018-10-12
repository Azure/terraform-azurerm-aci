output "containergroup_id" {
  description = "The ID of the created container group"
  value       = "${azurerm_container_group.containergroup.id}"
}

output "containergroup_ip_address" {
  description = "The IP address of the created container group"
  value       = "${azurerm_container_group.containergroup.ip_address}"
}

output "containergroup_fqdn" {
  description = "The FQDN of the created container group"
  value       = "${azurerm_container_group.containergroup.fqdn}"
}