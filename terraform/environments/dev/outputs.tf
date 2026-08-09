output "environment" {
  value = var.environment
}

output "location" {
  value = module.resource_group.location
}

output "resource_group_name" {
  description = "DEV resource group name"
  value       = module.resource_group.resource_group_id
}

output "resource_group_id" {
  description = "DEV resource group ID"
  value       = module.resource_group.resource_group_id
}

output "vnet_id" {
  description = "DEV virtual network ID"
  value       = module.network.vnet_id
}

output "vnet_name" {
  description = "DEV virtual network name"
  value       = module.network.vnet_name
}

output "aks_subnet_id" {
  description = "DEV AKS subnet ID"
  value       = module.network.aks_subnet_id
}

output "aks_subnet_name" {
  description = "DEV AKS subnet name"
  value       = module.network.aks_subnet_name
}
