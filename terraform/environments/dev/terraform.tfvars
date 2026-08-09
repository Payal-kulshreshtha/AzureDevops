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