terraform {
  backend "azurerm" {
    resource_group_name  = "terraformstate"
    storage_account_name = "tstateaztreinamento"
    container_name       = "terraformstate"
    key                  = "Yoa1esmSfbN6RB3kHEaHEYhZ1+cPPlcvakL07MifaZumOnxAX93xGMB4zoW308ZoVRfDlYfugSKM+ASt2VXvDw=="
  }
}



provider "azurerm" {
  # Configuration options
  features {

  }
}