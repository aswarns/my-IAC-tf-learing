terraform {
  required_version = "~> 1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"
    }
  }/*
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "terraform-aws-demo1-ashish"

    workspaces {
      name = "state-migration-demo"

    }
  }
 */ 
}

#Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region = var.aws_region
  #profile = "default"
}


