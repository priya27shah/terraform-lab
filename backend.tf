terraform {
  backend "azurerm" {
    resource_group_name  = "rg-rps-lab-backend"
    storage_account_name = "sarpslabbackend01"
    container_name       = "lab-container"
    key                  = "prod.terraform.tfstate"
  }
}
