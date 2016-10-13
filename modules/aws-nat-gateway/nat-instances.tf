resource "aws_nat_gateway" "nat-gateway" {
  allocation_id = "${elastic-ip-nat-1a}"
  subnet_id = "${var.public_subnet_id}"
}