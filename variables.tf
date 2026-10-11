variable "dbmulticloud_oracle_db_azure_blob_containers" {
  description = <<EOT
Map of dbmulticloud_oracle_db_azure_blob_containers, attributes below
Required:
    - azure_storage_account_name
    - azure_storage_container_name
    - compartment_id
    - display_name
Optional:
    - defined_tags
    - freeform_tags
    - private_endpoint_dns_alias
    - private_endpoint_ip_address
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    azure_storage_account_name   = string
    azure_storage_container_name = string
    compartment_id               = string
    display_name                 = string
    defined_tags                 = optional(map(string))
    freeform_tags                = optional(map(string))
    private_endpoint_dns_alias   = optional(string)
    private_endpoint_ip_address  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

