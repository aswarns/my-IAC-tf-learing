# Output variable definitions

output "arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "name" {
  description = "Name (ID) of the S3 bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "domain" {
  description = "Domain of the S3 bucket"
  value       = aws_s3_bucket.s3_bucket.bucket_domain_name

}

output "endpoint" {
  description = "Endpoiint of the Infrmation of the bucket"
  value       = aws_s3_bucket.s3_bucket.website_endpoint

}