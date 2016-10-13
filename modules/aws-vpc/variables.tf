variable "name" { }
variable "vpc_cidr" { }
variable "environment" { }
variable "availability_zones" {
  type = "list"
}
variable "public_subnet_cidrs" {
  type = "list"
}
variable "private_subnet_cidrs" {
  type = "list"
}
