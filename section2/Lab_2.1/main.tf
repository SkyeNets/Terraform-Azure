# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}


# Please use terraform v12.29 to start with for all labs, I will use terraform v13 from lab 7.5 onwards

provider "azurerm" {
 # version = "= 2.18"
  features {}
  tenant_id = "641ce32b-a716-4d3c-b4ce-6b915e000714"
}

resource "azurerm_resource_group" "rg" {
  name     = "skye-clstest-rg"
  location = "West Europe"
}