variable "connection_keys_lookup" {
  description = <<EOT
Map of connection_keys_lookup, attributes below
Required:
    - connection_id
EOT

  type = map(object({
    connection_id = string
  }))
}

