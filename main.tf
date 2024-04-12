terraform {
  backend "azurerm" {
    resource_group_name  = "terraformstate"
    storage_account_name = "tstateaztreinamento"
    container_name       = "terraformstate"
    key                  = "password"
  }
}



provider "azurerm" {
  # Configuration options
  features {

  }
}
