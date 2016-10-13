module "vpc" {
  source = "../modules/aws-vpc"

  name = "${var.environment}-vpc"
  environment = "${var.environment}"
  vpc_cidr = "${var.vpc_cidr}"
  public_subnet_cidrs = ["${var.public_subnet_cidrs}"]
  private_subnet_cidrs = ["${var.private_subnet_cidrs}"]
  availability_zones = ["${var.availability_zones}"]
}