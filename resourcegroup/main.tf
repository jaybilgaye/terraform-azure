variable "client_secret" {
  type = string
  default = "Wur9JUTJkk59nTK3GVNh.cNSUbpQ8tmX.0"
}

provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=2.5.0"

  subscription_id = "88aa5fec-a480-4f81-9c11-698ea4e5bdc1"
  client_id       = "b87f5fde-3a4c-4b8a-b368-360a3b1d10fe"
  client_secret   = var.client_secret
  tenant_id       = "e94cc0df-331a-48ba-b45d-58132312435c"

  features {}
}

