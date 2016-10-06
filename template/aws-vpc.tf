module "vpc" {
  source = "../modules-template/aws-vpc"

  name = "${var.environment}-vpc"
  environment = "${var.environment}"
  cidr = "${var.vpc_cidr}"
}