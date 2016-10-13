module "vpc" {
  source = "../modules/aws-vpc"

  environment = "${var.environment}"
  vpc_cidr = "${var.vpc_cidr}"
  public_subnet_cidrs = ["${var.public_subnet_cidrs}"]
  private_subnet_cidrs = ["${var.private_subnet_cidrs}"]
  availability_zones = ["${var.availability_zones}"]
}

module "internet-gateway" {
  source = "../modules/aws-vpc-internet-gateway"

  vpc_id = "${module.vpc.vpc_id}"
  environment = "${var.environment}"
  public_subnet_ids = ["${module.vpc.public_subnet_ids}"]
  availability_zones = ["${var.availability_zones}"]
}

module "aws_nat_gateways" "nat-gateways" {
  source = "../modules/aws-vpc-nat-gateway"

  vpc_id = "${module.vpc.vpc_id}"
  environment = "${var.environment}"
  availability_zones = ["${var.availability_zones}"]
  private_subnet_ids = ["${var.private_subnet_cidrs}"]
  public_subnet_ids = ["${module.vpc.public_subnet_ids}"]
}