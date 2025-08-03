output "resource_group_name" {
  description = "The name of the resource group for the application."
  value       = azurerm_resource_group.app_rg.name
}