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
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  vnet_name     = var.vnet_name
  address_space = var.vnet_address_space

  aks_subnet_name     = var.aks_subnet_name
  aks_subnet_prefixes = var.aks_subnet_prefixes
}