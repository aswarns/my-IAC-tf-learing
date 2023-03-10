terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-005f9685cb30f234b"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}