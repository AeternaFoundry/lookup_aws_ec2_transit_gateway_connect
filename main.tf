data "aws_ec2_transit_gateway_connect" "ec2_transit_gateway_connect_lookup" {
  for_each = var.ec2_transit_gateway_connect_lookup

  region                     = each.value.region
  tags                       = each.value.tags
  transit_gateway_connect_id = each.value.transit_gateway_connect_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

