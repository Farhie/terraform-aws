variable "public_subnet_ids" {
  description = "The subnet for the NAT to reside in"
  type = "list"
}

variable "private_subnet_ids" {
  description = "The private subnet to map the route table to the NAT"
  type = "list"
}

variable "availability_zones" {
  description = "List of availability zones to deploy into"
  type = "list"
}

variable "vpc_id" { }

variable "environment" { }