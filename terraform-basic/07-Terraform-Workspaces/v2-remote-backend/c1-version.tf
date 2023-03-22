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

#added S3 backend for Remote State storage
terraform {
  backend "s3" {
    bucket = "terraform-stacksimplify-ashish"
    key    = "workspaces/terraform.tfstate"
    region = "us-east-1"
    #For state Locking
    dynamodb_table = "terraform-dev-state-table"
  }
}

