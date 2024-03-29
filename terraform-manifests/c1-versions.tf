# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
   backend "azurerm" {
    resource_group_name   = "AZ-300"
    storage_account_name  = "terraformstate115"
    container_name        = "tfstatefiles"
    key                   = "terraform.tfstate"
  } 
}

# Provider Block
provider "azurerm" {
  features {}
}
# adding tf files to git repo
# Random String Resource
resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  numeric  = false
}


