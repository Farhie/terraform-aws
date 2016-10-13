resource "aws_eip" "elastic-ips" {
  count = "${length(var.availability_zones)}"
  vpc = "true"
}
