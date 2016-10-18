# Environment name. Max 13 chars.
environment = "dev"

vpc_cidr = "10.2.0.0/16"

availability_zones = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]

public_subnet_cidrs = ["10.2.32.0/20", "10.2.32.0/20", "10.2.160.0/20"]

private_subnet_cidrs = ["10.2.0.0/19", "10.2.64.0/19", "10.2.128.0/19"]

asg_scaling_to_zero_instances_out_of_hours = "1"

test_app_count = "1"
test_app_minimum_number_of_instances = "2"
test_app_maximum_number_of_instances = "2"
test_app_desired_number_of_instances = "2"

aws_ami_id = "ami-8cff51fb"

instance_type ="m3.medium"