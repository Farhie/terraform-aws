variable "app_name" { }
variable "environment" { }
variable "single_app_count" {
  default = 0
}
variable "aws_ami_id" { }
variable "instance_type" { }
variable "subnets_to_deploy" { }
variable "minimum_number_of_instances" { }
variable "maximum_number_of_instances" { }
variable "desired_number_of_instances" { }
variable "asg_scaling_to_zero_instances_out_of_hours" {
  default = "0"
}
