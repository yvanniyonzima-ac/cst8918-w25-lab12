resource "azurerm_resource_group" "app_rg" {
  name     = "${var.college-id}-a12-rg"
  location = "Canada Central"
}