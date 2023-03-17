# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "db_username" {
  description = "AWS RDS DB Admin Username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "AWS RDS DB Admin Password"
  type        = string
  sensitive   = true
}