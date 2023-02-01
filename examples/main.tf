module "private_endpoint" {
  source = "../../private_endpoint"

  private_endpoint_name          = "brumer-final-terraform-hub-acr-private-endpoint"
  resource_group_name            = "brumer-final-terraform-hub-rg"
  location                       = "West Europe"
  private_connection_resource_id = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourceGroups/brumer-final-terraform-hub-rg/providers/Microsoft.ContainerRegistry/registries/brumerfinalterraformhubacr"
  subnet_id                      = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourceGroups/brumer-final-terraform-hub-rg/providers/Microsoft.Network/virtualNetworks/brumer-final-terraform-hub-vnet/subnets/EndpointSubnet"
  subresource_name               = "registry"
  private_dns_zone_ids = [
    "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourceGroups/brumer-final-terraform-hub-rg/providers/Microsoft.Network/privateDnsZones/privatelink.azurecr.io"
  ]
}