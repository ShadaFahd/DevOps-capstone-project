terraform {
  backend "azurerm" {
    resource_group_name   = "devops1-capstone-queens-rg"
    storage_account_name  = "devops1queensstorage"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}
