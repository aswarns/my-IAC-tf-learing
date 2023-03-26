# Input variable definitions

variable "bucket_name" {
  description = "Name of the S3  bucket"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default = {
    "key" = "value"
  }
}

variable "aws_region" {
  description = "AWS Region"
  type = string
  
}