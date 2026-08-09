output "shared_resource_group_name" {
  description = "Shared resource group name"
  value       = azurerm_resource_group.shared.name
}

output "terraform_state_storage_account_name" {
  description = "Storage account containing Terraform state"
  value       = azurerm_storage_account.terraform_state.name
}

output "terraform_state_container_name" {
  description = "Terraform state container"
  value       = azurerm_storage_container.terraform_state.name
}

output "acr_name" {
  description = "Shared ACR name"
  value       = azurerm_container_registry.shared.name
}

output "acr_login_server" {
  description = "Shared ACR login server"
  value       = azurerm_container_registry.shared.login_server
}

output "github_application_client_id" {
  description = "GitHub Actions application client ID"
  value       = azuread_application.github_actions.client_id
}

output "github_service_principal_object_id" {
  description = "GitHub Actions service principal object ID"
  value       = azuread_service_principal.github_actions.object_id
}

output "github_federated_identity_credential_id" {
  description = "Federated identity credential ID for GitHub Actions"
  value       = azuread_application_federated_identity_credential.github_actions.id
}

output "github_federated_identity_subject" {
  description = "GitHub OIDC subject trusted by Azure"
  value       = azuread_application_federated_identity_credential.github_actions.subject
}

output "github_acr_push_role_assignment_id" {
  description = "Role assignment granting GitHub Actions AcrPush access to ACR"
  value       = azurerm_role_assignment.github_acr_push.id
}