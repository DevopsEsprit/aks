provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you are using version 1.x, the "features" block is not allowed.
    version = "~>2.0"





    features {}
}

terraform {
    backend "azurerm" {

   resource_group_name   ="aks"
   storage_account_name  ="aksk8s"
   container_name        ="tfstate"
   key                   ="aksk8s.tfstate"




}
}
