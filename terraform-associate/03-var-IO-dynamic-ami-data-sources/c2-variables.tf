# Input Variables
# AWS Region
variable "aws_region" {
  description = "AWS Region where resources needs to be created"
  type        = string
  default     = "us-east-1"
}

# AWS EC2 Instance Type

variable "instance_type" {
  description = "EC2 type"
  type        = string
  default     = "t2.micro"
  sensitive   = false
}

# AWS EC2 Instance Key Pair

variable "instance_key_pair" {
  description = "AWS EC2 .ppk static name"
  type        = string
  default     = "terraform-key-aws"
}


