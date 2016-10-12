resource "aws_subnet" "subnet-public-1a" {
  vpc_id = "${module.vpc.id}"
  cidr_block = "${var.subnet_public_1a}"
  availability_zone = "eu-west-1a"
  tags {
    Name = "${var.environment}-subnet-public-1a"
    Type = "VPC Subnet"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}

resource "aws_subnet" "subnet-public-1b" {
  count = "${var.multi_availability_zones}"
  vpc_id = "${module.vpc.id}"
  cidr_block = "${var.subnet_public_1b}"
  availability_zone = "eu-west-1b"
  tags {
    Name = "${var.environment}-subnet-public-1b"
    Type = "VPC Subnet"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}

resource "aws_subnet" "subnet-public-1c" {
  count = "${var.multi_availability_zones}"
  vpc_id = "${module.vpc.id}"
  cidr_block = "${var.subnet_public_1c}"
  availability_zone = "eu-west-1c"
  tags {
    Name = "${var.environment}-subnet-public-1c"
    Type = "VPC Subnet"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}

resource "aws_subnet" "subnet-private-1a" {
  vpc_id = "${module.vpc.id}"
  cidr_block = "${var.subnet_private_1a}"
  availability_zone = "eu-west-1a"
  tags {
    Name = "${var.environment}-subnet-private-1a"
    Type = "VPC Subnet"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}

resource "aws_subnet" "subnet-private-1b" {
  count = "${var.multi_availability_zones}"
  vpc_id = "${module.vpc.id}"
  cidr_block = "${var.subnet_private_1b}"
  availability_zone = "eu-west-1b"
  tags {
    Name = "${var.environment}-subnet-private-1b"
    Type = "VPC Subnet"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}

resource "aws_subnet" "subnet-private-1c" {
  count = "${var.multi_availability_zones}"
  vpc_id = "${module.vpc.id}"
  cidr_block = "${var.subnet_private_1c}"
  availability_zone = "eu-west-1c"
  tags {
    Name = "${var.environment}-subnet-private-1c"
    Type = "VPC Subnet"
    Environment = "${var.environment}"
    Monitoring = "true"
  }
}
