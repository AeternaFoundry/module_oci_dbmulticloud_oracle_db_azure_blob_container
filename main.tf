resource "oci_dbmulticloud_oracle_db_azure_blob_container" "dbmulticloud_oracle_db_azure_blob_containers" {
  for_each = var.dbmulticloud_oracle_db_azure_blob_containers

  azure_storage_account_name   = each.value.azure_storage_account_name
  azure_storage_container_name = each.value.azure_storage_container_name
  compartment_id               = each.value.compartment_id
  display_name                 = each.value.display_name
  defined_tags                 = each.value.defined_tags
  freeform_tags                = each.value.freeform_tags
  private_endpoint_dns_alias   = each.value.private_endpoint_dns_alias
  private_endpoint_ip_address  = each.value.private_endpoint_ip_address

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

