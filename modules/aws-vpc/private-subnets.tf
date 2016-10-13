resource "aws_subnet" "private-subnets" {
  count = "${length(var.availability_zones)}"
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${element(var.private_subnet_cidrs, count.index)}"
  availability_zone = "${element(var.availability_zones, count.index)}"
  tags {
    Name = "${var.environment}-subnet-private-${element(var.availability_zones, count.index)}"
    Type = "VPC Subnet"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}