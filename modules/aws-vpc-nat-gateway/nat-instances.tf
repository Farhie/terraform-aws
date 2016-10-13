resource "aws_nat_gateway" "nat-gateways" {
  count = "${length(var.availability_zones)}"
  allocation_id = "${element(aws_eip.elastic-ips.*.id, count.index)}"
  subnet_id = "${element(public_subnet_ids, count.index)}"
}