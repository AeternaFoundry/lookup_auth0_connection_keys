output "connection_keys_lookup_id" {
  description = "Map of id values across all connection_keys_lookup, keyed the same as var.connection_keys_lookup"
  value       = { for k, v in data.auth0_connection_keys.connection_keys_lookup : k => v.id }
}
output "connection_keys_lookup_connection_id" {
  description = "Map of connection_id values across all connection_keys_lookup, keyed the same as var.connection_keys_lookup"
  value       = { for k, v in data.auth0_connection_keys.connection_keys_lookup : k => v.connection_id }
}
output "connection_keys_lookup_keys" {
  description = "Map of keys values across all connection_keys_lookup, keyed the same as var.connection_keys_lookup"
  value       = { for k, v in data.auth0_connection_keys.connection_keys_lookup : k => v.keys }
}

