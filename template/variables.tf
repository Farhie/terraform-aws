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