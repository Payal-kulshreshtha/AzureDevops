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

