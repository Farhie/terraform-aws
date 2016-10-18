module "first-app" {
  source = "../modules/single-app"

  app_name = "test-app"
  environment = "${var.environment}"
  single_app_count = "${var.test_app_count}"
  aws_ami_id = "${var.aws_ami_id}"
  instance_type = "${var.instance_type}"
  subnets_to_deploy = "${module.vpc.private_subnet_ids}"
  minimum_number_of_instances = "${var.test_app_minimum_number_of_instances}"
  maximum_number_of_instances = "${var.test_app_maximum_number_of_instances}"
  desired_number_of_instances = "${var.test_app_desired_number_of_instances}"
  asg_scaling_to_zero_instances_out_of_hours = "${var.asg_scaling_to_zero_instances_out_of_hours}"
}