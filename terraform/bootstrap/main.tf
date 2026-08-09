terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {}

# ---------------------------------------------------------
# Shared Resource Group
# ---------------------------------------------------------


resource "azurerm_resource_group" "shared" {
  name     = var.shared_resource_group_name
  location = var.location
}


# ---------------------------------------------------------
# Terraform Remote State Storage
# ---------------------------------------------------------

resource "azurerm_storage_account" "terraform_state" {
  name                     = var.storage_account_name
  location                 = azurerm_resource_group.shared.location
  resource_group_name      = azurerm_resource_group.shared.name
  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false
  shared_access_key_enabled       = true
}

resource "azurerm_storage_container" "terraform_state" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.terraform_state.id
  container_access_type = "private"
}


# ---------------------------------------------------------
# Shared Azure Container Registry
# ---------------------------------------------------------
resource "azurerm_container_registry" "shared" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.shared.name
  location            = azurerm_resource_group.shared.location
  sku                 = "Standard"
  # Do not use ACR admin username/password.
  admin_enabled = false
}


# ---------------------------------------------------------
# GitHub Actions Microsoft Entra Application
# ---------------------------------------------------------

resource "azuread_application" "github_actions" {
  display_name = var.github_app_name
}

resource "azuread_service_principal" "github_actions" {
  client_id = azuread_application.github_actions.client_id
}

resource "azuread_application_federated_identity_credential" "github_actions" {
  application_id = azuread_application.github_actions.id
  display_name   = "github-actions-dev"
  description    = "Allow Github Actions from the ${var.github_environment} environment to authenticate into azure"
  audiences = [
    "api://AzureADTokenExchange"
  ]
  issuer  = "https://token.actions.githubusercontent.com"
  subject = "repo:${var.github_owner}@${var.github_owner_id}/${var.github_repository}@${var.github_repository_id}:environment:${var.github_environment}"
}

# ---------------------------------------------------------
# ACR Role Assignment
# ---------------------------------------------------------

resource "azurerm_role_assignment" "github_acr_push" {
  scope                = azurerm_container_registry.shared.id
  role_definition_name = "AcrPush"
  principal_id         = azuread_service_principal.github_actions.object_id
}