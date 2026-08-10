resource "azurerm_kubernetes_cluster" "this" {
    name = var.cluster_name
    location = var.location
    resource_group_name = var.resource_group_name
    dns_prefix = var.dns_prefix

    kubernetes_version = var.kubernetes_version

    default_node_pool {
      name = "system"
      node_count = var.node_count
      vm_size = var.vm_size
      vnet_subnet_id = var.subnet_id

      type = "VirtualMachineScaleSets"
    }

    identity {
        type = "SystemAssigned"
    }

    role_based_access_control_enabled = true
    azure_active_directory_role_based_access_control {
      azure_rbac_enabled = true
      tenant_id = var.tenant_id
    }

    oidc_issuer_enabled       = true
    workload_identity_enabled = true
    tags = var.tags
}


resource "azurerm_role_assignment" "acr_pull" {
    scope = var.acr_id
    role_definition_name = "AcrPull"
    principal_id = azurerm_kubernetes_cluster.this.kubelet_identity[0].object_id
    principal_type = "ServicePrincipal"
}