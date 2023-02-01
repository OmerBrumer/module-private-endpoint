output "id" {
  description = "Id of private endpoint."
  value       = azurerm_private_endpoint.private_endpoint.id
}

output "name" {
  description = "Name of private endpoint."
  value       = azurerm_private_endpoint.private_endpoint.name
}

output "object" {
  description = "Object of private endpoint."
  value       = azurerm_private_endpoint.private_endpoint
}

output "private_ip" {
  description = "Private ip of private endpoint."
  value       = azurerm_private_endpoint.private_endpoint.private_service_connection.0.private_ip_address
}