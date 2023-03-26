# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
