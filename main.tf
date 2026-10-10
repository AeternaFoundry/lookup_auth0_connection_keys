data "auth0_connection_keys" "connection_keys_lookup" {
  for_each = var.connection_keys_lookup

  connection_id = each.value.connection_id
}

