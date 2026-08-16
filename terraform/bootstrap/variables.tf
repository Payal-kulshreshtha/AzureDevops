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

variable "github_owner" {
  description = "GitHub repository owner"
  type        = string
}

variable "github_owner_id" {
  description = "Immutable GitHub repository owner ID"
  type        = string
}

variable "github_repository" {
  description = "Github repository in OWNER/REPOSITORY format"
  type        = string
}

variable "github_repository_id" {
  description = "Immutable GitHub repository ID"
  type        = string
}

variable "github_environment" {
  description = "Github Environment allowed to authenticate"
  type        = string
  default     = "dev"
}

variable "additional_github_environments" {
  description = "Github environment that allow to authenticate to Azure"
  type        = set(string)

  default = [
    "qa",
    "preprod",
    "prod"
  ]
}

variable "subscription_id" {
  type = string
}