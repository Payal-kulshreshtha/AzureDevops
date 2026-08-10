output "id" {
  description = "AKS cluster resource ID"
  value       = azurerm_kubernetes_cluster.this.id
}

output "name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.this.name
}

output "fqdn" {
  description = "AKS API server FQDN"
  value       = azurerm_kubernetes_cluster.this.fqdn
}

output "kubelet_identity_object_id" {
  description = "Object ID of the AKS kubelet managed identity"
  value       = azurerm_kubernetes_cluster.this.kubelet_identity[0].object_id
}

output "kubelet_identity_client_id" {
  description = "Client ID of the AKS kubelet managed identity"
  value       = azurerm_kubernetes_cluster.this.kubelet_identity[0].client_id
}

output "cluster_identity_object_id" {
  description = "Object ID of the AKS cluster managed identity"
  value       = azurerm_kubernetes_cluster.this.identity[0].principal_id
}

output "oidc_issuer_url" {
  description = "OIDC issuer URL for the AKS cluster"
  value       = azurerm_kubernetes_cluster.this.oidc_issuer_url
}

output "kubernetes_version" {
  description = "Kubernetes version running on the AKS cluster"
  value       = azurerm_kubernetes_cluster.this.kubernetes_version
}

output "node_resource_group" {
  description = "Node resource group created by AKS"
  value       = azurerm_kubernetes_cluster.this.node_resource_group
}