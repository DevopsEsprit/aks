provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you are using version 1.x, the "features" block is not allowed.
    version = "~>2.0"
   # subscription_id ="cfac6a63-b3f3-4682-bd35-b3b5d9424b2d"
   # client_id       ="f6d456fa-bf84-436a-8231-147b904c6ca1"
   # client_secret   ="3b762305-6680-4fac-a03a-8689351b0a93"
   # tenant_id       = "27edc1b2-a527-4f5d-82d5-84b7dc31cdc6"





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
