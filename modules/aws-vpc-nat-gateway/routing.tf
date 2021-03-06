resource "aws_route_table" "private-route-tables" {
  vpc_id = "${var.vpc_id}"
  count = "${length(var.availability_zones)}"

  tags {
    Name = "${var.environment}-private-route-table-${element(var.availability_zones, count.index)}"
    Type = "VPC Route Table"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}

resource "aws_route" "nat-gateway-route" {
  count = "${length(var.availability_zones)}"
  route_table_id = "${element(aws_route_table.private-route-tables.*.id, count.index)}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = "${element(aws_nat_gateway.nat-gateways.*.id, count)}"
}

resource "aws_route_table_association" "mod-private-1a-rt-association" {
  count = "${length(var.availability_zones)}"
  subnet_id = "${element(var.private_subnet_ids, count)}"
  route_table_id = "${element(aws_route_table.private-route-tables.*.id, count)}"
}