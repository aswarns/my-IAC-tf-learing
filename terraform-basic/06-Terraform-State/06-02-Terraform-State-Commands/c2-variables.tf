# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

/*
variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-005f9685cb30f234b" # Amazon2 Linux AMI ID
}
*/

/*
variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 2
}
*/
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t1.micro"

}
