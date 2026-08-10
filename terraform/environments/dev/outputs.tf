output "environment" {
  value = var.environment
}

output "location" {
  value = module.resource_group.location
}

output "resource_group_name" {
  description = "DEV resource group name"
  value       = module.resource_group.resource_group_name
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

output "aks_id" {
  description = "DEV AKS cluster ID"
  value       = module.aks.id
}

output "aks_name" {
  description = "DEV AKS cluster name"
  value       = module.aks.name
}

output "aks_fqdn" {
  description = "DEV AKS API server FQDN"
  value       = module.aks.fqdn
}

output "aks_kubelet_identity_object_id" {
  description = "DEV AKS kubelet identity object ID"
  value       = module.aks.kubelet_identity_object_id
}

output "aks_cluster_identity_object_id" {
  description = "DEV AKS cluster identity object ID"
  value       = module.aks.cluster_identity_object_id
}

output "aks_oidc_issuer_url" {
  description = "DEV AKS OIDC issuer URL"
  value       = module.aks.oidc_issuer_url
}

output "aks_kubernetes_version" {
  description = "DEV AKS Kubernetes version"
  value       = module.aks.kubernetes_version
}
