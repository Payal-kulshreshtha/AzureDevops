variable "location" {
  description = "Azure region for bootstrap resources"
  type        = string
  default     = "East US"
}

variable "shared_resource_group_name" {
  description = "Resource group for shared infra"
  type        = string
  default     = "rg-shared"
}

variable "storage_account_name" {
  description = "Globally unique storage account name for terraform state"
  type        = string
}

variable "acr_name" {
  description = "Globally unique Azure Container Registry name"
  type        = string
}

variable "github_app_name" {
  description = "Microsoft Entra application used by Github Actions"
  type        = string
  default     = "github-actions-aks"
}

variable "github_repository" {
  description = "Github repository in OWNER/REPOSITORY format"
  type        = string
}

variable "github_environment" {
  description = "Github Environment allowed to authenticate"
  type        = string
  default     = "main"
}