# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "my_s3_bucket" {
  description = "S3 bucket name that we pass to to s3 module"
  type        = string
  default     = "mybucket-20212222"
}

variable "my_s3_tags" {
  description = "tags to set on bucket"
  type        = map(string)
  default = {
    Terraform  = "true"
    Envirement = "dev"
    newtag1    = "tag1"
    newtag2    = "tag2"
  }

}
