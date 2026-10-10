output "connection_keys_lookup_id" {
  description = "Map of id values across all connection_keys_lookup, keyed the same as var.connection_keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.auth0_connection_keys.connection_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connection_keys_lookup_connection_id" {
  description = "Map of connection_id values across all connection_keys_lookup, keyed the same as var.connection_keys_lookup except keys with no connection_id are omitted"
  value       = { for k, v in data.auth0_connection_keys.connection_keys_lookup : k => v.connection_id if v.connection_id != null && length(v.connection_id) > 0 }
}
output "connection_keys_lookup_keys" {
  description = "Map of keys values across all connection_keys_lookup, keyed the same as var.connection_keys_lookup except keys with no keys are omitted"
  value       = { for k, v in data.auth0_connection_keys.connection_keys_lookup : k => v.keys if v.keys != null && length(v.keys) > 0 }
}

