resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    "Name"        = var.vpc_name
    "Environment" = "var.env"
  }
}