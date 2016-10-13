variable "vpc_id" { }
variable "environment" { }
variable "public_subnet_ids" {
  description = "The private subnet to map the route table to the NAT"
  type = "list"
}
variable "availability_zones" {
  description = "List of availability zones to deploy into"
  type = "list"
}
