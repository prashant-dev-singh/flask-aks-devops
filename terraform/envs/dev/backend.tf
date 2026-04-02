terraform {
  backend "azurerm" {
    resource_group_name  = "rg-devops-project"
    storage_account_name = "tfstateprashant123"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}
