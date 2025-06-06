data "azurerm_client_config" "this" {}

data "azurerm_resource_group" "this" { name = "rg-little-pm" }

data "azurerm_dns_zone" "this" {
  name                = "app.dmr4eg.xyz"
  resource_group_name = data.azurerm_resource_group.this.name
}
