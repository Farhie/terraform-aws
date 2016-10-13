module "aws_nat_gateways" "nat-gateways" {
  source = "../modules/aws-nat-gateway"

  availability_zones = ["${var.availability_zones}"]
  public_subnet_ids = ["${module.vpc.public_subnet_ids}"]
}