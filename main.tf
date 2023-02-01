/**
* # Private Endpoint module
*/

resource "azurerm_private_endpoint" "private_endpoint" {
  name                = var.private_endpoint_name
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = var.subnet_id

  private_dns_zone_group {
    name                 = "${var.private_endpoint_name}-dns-group"
    private_dns_zone_ids = var.private_dns_zone_ids
  }

  private_service_connection {
    name                           = "${var.private_endpoint_name}-connection"
    is_manual_connection           = var.is_manual_connection
    request_message                = var.is_manual_connection ? var.request_message : null
    private_connection_resource_id = var.private_connection_resource_id
    subresource_names              = [var.subresource_name]
  }

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}