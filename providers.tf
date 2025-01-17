terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.14.0"
    }
  }
  backend "local" {}
}

provider "azurerm" {
  resource_provider_registrations = "core"
  features {}
}

provider "azurerm" {
  resource_provider_registrations = "core"
  subscription_id                 = var.environment_id
  features {}
  alias = "dynamic"
}
