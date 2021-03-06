variable "environment" {
  description = "environment name"
  default = "template"
}

variable "vpc_cidr" {
  description = "vpc cidr block"
  default = "10.100.0.0/22"
}

variable "subnet_public_1a" {
  description = "subnet public in zone 1a"
  default = "10.100.0.0/24"
}

variable "subnet_public_1b" {
  description = "subnet public in zone 1b"
  default = "10.100.1.0/24"
}

variable "subnet_public_1c" {
  description = "subnet public in zone 1c"
  default = "10.100.2.0/24"
}

variable "subnet_private_1a" {
  description = "subnet private in zone 1a"
  default = "10.100.3.0/24"
}

variable "subnet_private_1b" {
  description = "subnet private in zone 1b"
  default = "10.100.4.0/24"
}

variable "subnet_private_1c" {
  description = "subnet private in zone 1c"
  default = "10.100.5.0/24"
}

variable "multi_availability_zones" {
  description = "boolean defining whether infra should be multi AZ"
  default = "0"
}

variable "availability_zones" {
  description = "List of availability zones to deploy into"
  type = "list"
  default = ["none-existent-region"]
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type = "list"
  default = ["none-existent-cidr"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type = "list"
  default = ["none-existent-cidr"]
}

variable "aws_ami_id" {
  description = "default AWS AMI to use"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "asg_scaling_to_zero_instances_out_of_hours" {
  description = "If set to '1' it will scale ASG to 0 instances overnight."
  default = "0"
}

variable "test_app_count" {
  description = "flag to indicate whether to create this resource"
  default = "0"
}

variable "test_app_minimum_number_of_instances" { }

variable "test_app_maximum_number_of_instances" { }

variable "test_app_desired_number_of_instances" { }