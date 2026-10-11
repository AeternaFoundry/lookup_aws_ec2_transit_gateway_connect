variable "ec2_transit_gateway_connect_lookup" {
  description = <<EOT
Map of ec2_transit_gateway_connect_lookup, attributes below
Optional:
    - region
    - tags
    - transit_gateway_connect_id
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region                     = optional(string)
    tags                       = optional(map(string))
    transit_gateway_connect_id = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

