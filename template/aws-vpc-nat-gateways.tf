module "aws_nat_gateways" "nat-gateways" {
  source = "../modules/aws-vpc-nat-gateway"

  vpc_id = "${module.vpc.vpc_id}"
  environment = "${var.environment}"
  availability_zones = ["${var.availability_zones}"]
  public_subnet_ids = ["${module.vpc.public_subnet_ids}"]
}