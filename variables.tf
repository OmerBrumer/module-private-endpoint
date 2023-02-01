variable "resource_group_name" {
  description = "(Required)A container that holds related resources for an Azure solution."
  type        = string
}

variable "location" {
  description = "(Required)The location to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'."
  type        = string
}

variable "private_endpoint_name" {
  description = "(Required)name of private endpoint."
  type        = string
}

variable "subnet_id" {
  description = "(Required)ID of the subnet in which the Private Endpoint will be created."
  type        = string
}

variable "private_dns_zone_name" {
  description = "(Required)Private dns zone name to associate to private endpoint."
  type        = string
  default     = null
}

variable "is_manual_connection" {
  description = "(Required)Does the Private Endpoint require manual approval from the remote resource owner? Default to `false`."
  type        = bool
  default     = false
}

variable "subresource_name" {
  description = "(Required)Name of the subresource corresponding to the target Azure resource. Only valid if `target_resource` is not a Private Link Service."
  type        = string
}

variable "private_connection_resource_id" {
  description = "(Required)Id of resource to attach the private endpoint."
  type        = string
}

variable "request_message" {
  description = "(Optional)A message passed to the owner of the remote resource when the Private Endpoint attempts to establish the connection to the remote resource. Only valid if `is_manual_connection` is set to `true`."
  type        = string
  default     = "Private Endpoint Deployment"
}

variable "private_dns_zone_ids" {
  description = "(Optional)Specifies the list of Private DNS Zones to include within the private_dns_zone_group."
  type        = list(string)
  default     = []
}