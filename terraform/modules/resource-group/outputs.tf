output "resource_group_id" {
    description = "Resource group ID"
    value = azurerm_resource_group.this.id
}

output "resource_group_name" {
    description = "Name of resource group"
    value = azurerm_resource_group.this.name
}

output "location" {
    description = "Resource Group Location"
    value = azurerm_resource_group.this.location
}