resource "aws_route_table" "public-route-table" {
  vpc_id = "${var.vpc_id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet-gateway.id}"
  }

  tags {
    Name = "${var.environment}-public-route-table"
    Type = "VPC Route Table"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}

resource "aws_route_table_association" "public-rt-assosiation-1a" {
  count = "${length(var.availability_zones)}"
  subnet_id = "${element(var.public_subnet_ids, count)}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}