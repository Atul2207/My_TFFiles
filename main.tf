terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "e05a4096-d276-414e-be62-3b407597059b"
  tenant_id = "47b14404-05ac-4540-9c62-ea723ba80be5"
  client_id = "fad5419b-596a-4a15-8a4d-af78d1412fec"
  client_secret = "~re8Q~HojS0uwV5230Liw2ycRO7HjITBmiuhEbRQ"
  features {}  
}
locals {
  resource_group_name="app-grp"
  location="North Europe"
}

resource "azurerm_resource_group" "appgrp" {
  name     = local.resource_group_name
  location = local.location
}

resource "azurerm_storage_account" "appstore566565637" {
  name                     = "appstore566565637"
  resource_group_name      = "app-grp"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}
