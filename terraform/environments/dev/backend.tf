terraform {
  backend "azurerm" {
    resource_group_name  = "rg-shared"
    storage_account_name = "tfstatepayalaks01"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}