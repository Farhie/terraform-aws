variable "public_subnet_ids" {
  description = "The subnet for the NAT to reside in"
  type = "list"
}

variable "availability_zones" {
  description = "List of availability zones to deploy into"
  type = "list"
}

variable "vpc_id" { }

variable "environment" { }