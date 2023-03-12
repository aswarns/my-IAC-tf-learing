resource "aws_vpc" "us-west-1" {
  cidr_block = "10.0.0.0/16"
  provider = aws.us-west-1 #here calling for other provider (other than default provider)
  tags = {
    "Name" = "us-west-1"
  }
}