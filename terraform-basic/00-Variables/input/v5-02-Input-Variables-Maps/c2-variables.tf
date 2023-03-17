# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-005f9685cb30f234b" # Amazon2 Linux AMI ID
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = list(string)
  default     = ["t2.micro", "t1.micro"]

}
/*

variable "ec2_instance_tags" {
  description = "EC2 Instance Tags"
  type = map(string)
  default = {
    "Name" = "ec2-web"
    "Tier" = "web"
  }

}
*/

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = map(string)
  default = {
    "small-apps" = "t1.micro"
    "midum-apps" = "t2.micro"
  }

}


