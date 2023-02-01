<!-- BEGIN_TF_DOCS -->

# Private Endpoint module

## Examples
```hcl
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
```

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Id of private endpoint. |
| <a name="output_name"></a> [name](#output\_name) | Name of private endpoint. |
| <a name="output_object"></a> [object](#output\_object) | Object of private endpoint. |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | Private ip of private endpoint. |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | (Required)The location to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'. | `string` | n/a | yes |
| <a name="input_private_connection_resource_id"></a> [private\_connection\_resource\_id](#input\_private\_connection\_resource\_id) | (Required)Id of resource to attach the private endpoint. | `string` | n/a | yes |
| <a name="input_private_endpoint_name"></a> [private\_endpoint\_name](#input\_private\_endpoint\_name) | (Required)name of private endpoint. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required)A container that holds related resources for an Azure solution. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | (Required)ID of the subnet in which the Private Endpoint will be created. | `string` | n/a | yes |
| <a name="input_subresource_name"></a> [subresource\_name](#input\_subresource\_name) | (Required)Name of the subresource corresponding to the target Azure resource. Only valid if `target_resource` is not a Private Link Service. | `string` | n/a | yes |
| <a name="input_is_manual_connection"></a> [is\_manual\_connection](#input\_is\_manual\_connection) | (Required)Does the Private Endpoint require manual approval from the remote resource owner? Default to `false`. | `bool` | `false` | no |
| <a name="input_private_dns_zone_ids"></a> [private\_dns\_zone\_ids](#input\_private\_dns\_zone\_ids) | (Optional)Specifies the list of Private DNS Zones to include within the private\_dns\_zone\_group. | `list(string)` | `[]` | no |
| <a name="input_private_dns_zone_name"></a> [private\_dns\_zone\_name](#input\_private\_dns\_zone\_name) | (Required)Private dns zone name to associate to private endpoint. | `string` | `null` | no |
| <a name="input_request_message"></a> [request\_message](#input\_request\_message) | (Optional)A message passed to the owner of the remote resource when the Private Endpoint attempts to establish the connection to the remote resource. Only valid if `is_manual_connection` is set to `true`. | `string` | `"Private Endpoint Deployment"` | no |



# Authors
Originally created by Omer Brumer
<!-- END_TF_DOCS -->