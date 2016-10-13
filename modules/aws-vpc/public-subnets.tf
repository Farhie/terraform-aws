resource "aws_subnet" "public-subnets" {
  count = "${length(var.availability_zones)}"
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${element(var.public_subnet_cidrs, count.index)}"
  availability_zone = "${element(var.availability_zones, count.index)}"
  tags {
    Name = "${var.environment}-subnet-public-${element(var.availability_zones, count.index)}"
    Type = "VPC Subnet"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}