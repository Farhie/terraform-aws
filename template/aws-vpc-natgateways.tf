module "aws_nat_gateway_1a" "nat-gateway-1a" {
  source = "../modules/aws-nat-gateway"

  public_subnet_id = "${aws_subnet.subnet-public-1a.id}"
}

module "aws_nat_gateway_1b" "nat-gateway-1b" {
  source = "../modules/aws-nat-gateway"

  public_subnet_id = "${aws_subnet.subnet-public-1b.id}"
}

module "aws_nat_gateway_1c" "nat-gateway-1c" {
  source = "../modules/aws-nat-gateway"

  public_subnet_id = "${aws_subnet.subnet-public-1c.id}"
}