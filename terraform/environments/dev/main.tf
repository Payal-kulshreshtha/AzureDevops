terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "../../modules/resource-group"
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "network" {
  source              = "../../modules/network"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location

  vnet_name     = var.vnet_name
  address_space = var.vnet_address_space

  aks_subnet_name     = var.aks_subnet_name
  aks_subnet_prefixes = var.aks_subnet_prefixes
}

module "aks" {
  source = "../../modules/aks"

  cluster_name        = var.cluster_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location

  dns_prefix = var.dns_prefix
  subnet_id  = module.network.aks_subnet_id

  tenant_id = var.tenant_id

  kubernetes_version = var.kubernetes_version
  node_count         = var.node_count
  vm_size            = var.vm_size

  acr_id = var.acr_id

  github_service_principal_object_id = var.github_service_principal_object_id

  tags = var.tags
}