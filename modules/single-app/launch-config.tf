resource "aws_launch_configuration" "single-app-launch-config" {
  count = "${var.single_app_count}"
  instance_type = "${var.instance_type}"
  name_prefix = "${var.environment}-${var.app_name}-"
  image_id = "${var.aws_ami_id}"
  enable_monitoring = true

  lifecycle {
    create_before_destroy = true
  }
}
