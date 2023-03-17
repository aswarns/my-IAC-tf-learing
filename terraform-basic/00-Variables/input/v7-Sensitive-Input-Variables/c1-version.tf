terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.58"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

