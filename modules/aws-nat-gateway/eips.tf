resource "aws_eip" "elastic-ip-nat" {
  vpc = "true"
}
