resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc_cidr}"
  tags {
    Name = "${var.environment}-vpc"
    Type = "VPC"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}