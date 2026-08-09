variable "resource_group_name" {
    description = "Resource group where network resources will be created"
    type = string
}

variable "location" {
    description = "Azure region"
    type= string
}

variable "vnet_name" {
    description = "Virtual Network name"
    type = string
}

variable "address_space" {
    description = "Adress space for virtual network"
    type = list(string)
}

variable "aks_subnet_name" {
    description = "AKS subnet name"
    type = string
}

variable "aks_subnet_prefixes" {
    description = "Address prefixes for the AKS subnet"
    type = list(string)
}