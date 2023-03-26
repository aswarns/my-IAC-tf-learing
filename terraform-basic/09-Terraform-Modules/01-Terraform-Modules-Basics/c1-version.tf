terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"
    }
  }
}

#Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region  = var.aws_region
  profile = "default"
}




