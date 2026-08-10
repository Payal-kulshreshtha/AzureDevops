environment         = "dev"
location            = "East US"
resource_group_name = "rg-aks-dev"
tags = {
  Environment = "dev"
  ManagedBy   = "Terraform"
  Project     = "AzureDevops"
}

vnet_name = "vnet-dev"

vnet_address_space = ["10.10.0.0/16"]

aks_subnet_name = "snet-aks-dev"

aks_subnet_prefixes = ["10.10.0.0/22"]

tenant_id = "4da88a83-033e-4a95-ad94-b6ff35e68653"

cluster_name = "aks-dev"

dns_prefix = "aks-dev"

kubernetes_version = "1.36"

node_count = 1

vm_size = "Standard_D2s_v7"

acr_id = "/subscriptions/388a5285-111a-4a08-9275-44c0082c6b62/resourceGroups/rg-shared/providers/Microsoft.ContainerRegistry/registries/acrpayalaks01"