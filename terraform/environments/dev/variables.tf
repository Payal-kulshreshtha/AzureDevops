variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "tags" {
  description = "Tags for DEV resources"
  type        = map(string)
  default     = {}
}

variable "vnet_name" {
  description = "Vnet Name"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for vnet"
  type        = list(string)
}

variable "aks_subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "aks_subnet_prefixes" {
  description = "Aks Subnet prrefixes"
  type        = list(string)
}

variable "tenant_id" {
  description = "Microsoft Entra tenant id"
  type        = string
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}


variable "kubernetes_version" {
  description = "kubernetes version"
  type        = string
  default     = null
}

variable "node_count" {
  description = "Initial system node count"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "VM size for system node pool"
  type        = string
  default     = "Standard_D4as_v7"
}

variable "acr_id" {
  description = "ID of the shared Azure Container Registry"
  type        = string
}

variable "github_service_principal_object_id" {
  description = "DEV Github actions service principal object ID"
  type        = string
}