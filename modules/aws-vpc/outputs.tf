output "id" {
  value = "${aws_vpc.vpc.id}"
}

output "cidr" {
  value = "${aws_vpc.vpc.cidr_block}"
}

output "public_subnet_ids" {
  value = ["${aws_subnet.public-subnets.*.id}"]
}