terraform {
  backend "azurerm" {}
}
provider "azurerm" {
  features {}
}
provider "azuread" {}
provider "null" {}

provider "tls" {}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-${var.environment}-core-rg"
  location = var.location

  tags = var.tags
}