resource "azurerm_resource_group" "app_rg" {
  name     = "${var.college_id}-a12-rg"
  location = "Canada Central"
}