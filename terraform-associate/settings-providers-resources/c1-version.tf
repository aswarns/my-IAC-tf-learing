#Terraform Block
terraform {
  required_version = "~> 1.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"

    }
  }
}

resource "aws_instance" "MyEC2VM" {
  ami = "ami-005f9685cb30f234b"
  instance_type = "t2.micro" 
}

