resource "aws_autoscaling_group" "single-app-asg" {
  count = "${var.single_app_count}"
  vpc_zone_identifier = ["${split(",", var.subnets_to_deploy)}"]
  name = "${var.environment}-${var.app_name}"
  max_size = "${var.minimum_number_of_instances}"
  min_size = "${var.maximum_number_of_instances}"
  desired_capacity = "${var.desired_number_of_instances}"
  force_delete = false
  launch_configuration = "${aws_launch_configuration.single-app-launch-config.name}"
  health_check_grace_period = 300
  health_check_type = "ELB"
  tag {
    key = "Name"
    value = "${var.app_name}"
    propagate_at_launch = "true"
  }
  tag {
    key = "Environment"
    value = "${var.environment}"
    propagate_at_launch = "true"
  }
  tag {
    key = "Type"
    value = "EC2 Instance"
    propagate_at_launch = "true"
  }
  tag {
    key = "Monitoring"
    value = "true"
    propagate_at_launch = "true"
  }
}

resource "aws_autoscaling_schedule" "single-app-asg-scale-down-schedule" {
  count = "${coalesce(var.asg_scaling_to_zero_instances_out_of_hours, var.single_app_count)}"
  autoscaling_group_name = "${aws_autoscaling_group.single-app-asg.name}"
  scheduled_action_name = "${var.environment}-${var.app_name}-scale-down-out-of-hours"
  min_size = 0
  max_size = 0
  desired_capacity = 0
  recurrence = "30 22 * * 1-5"
}

resource "aws_autoscaling_schedule" "single-app-asg-scale-up-schedule" {
  count = "${coalesce(var.asg_scaling_to_zero_instances_out_of_hours, var.single_app_count)}"
  autoscaling_group_name = "${aws_autoscaling_group.single-app-asg.name}"
  scheduled_action_name = "${var.environment}-${var.app_name}-scale-up-out-of-hours"
  max_size = "${var.minimum_number_of_instances}"
  min_size = "${var.minimum_number_of_instances}"
  desired_capacity = "${var.desired_number_of_instances}"
  recurrence = "0 6 * * 1-5"
}