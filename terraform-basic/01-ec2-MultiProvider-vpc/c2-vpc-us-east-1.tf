resource "aws_vpc" "us-east-1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "name" = "us-east-1"
  }
}