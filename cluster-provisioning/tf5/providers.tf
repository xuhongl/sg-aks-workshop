provider "azurerm" {
  version = "=2.14.0"
  features {}
}

provider "github" {
  token        = var.github_token
  organization = var.github_organization
  version      = "=2.4.1"
}


provider "tls" {
  version = "=2.1"
}


