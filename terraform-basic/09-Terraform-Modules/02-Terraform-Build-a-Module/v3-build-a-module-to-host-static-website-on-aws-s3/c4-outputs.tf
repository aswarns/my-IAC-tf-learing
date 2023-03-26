#Output definations 

## S3 bucket ARN
output "wensite_bucket_arn" {
  description = "ARN of the bucket"
  value       = module.website_s3_bucket.arn
}

#S3 bucket Name
output "wensite_bucket_name" {
  description = "Name of the bucket"
  value       = module.website_s3_bucket.name
}

# S3 bucket Domain
output "wensite_bucket_domain" {
  description = "Name of the bucket"
  value       = module.website_s3_bucket.domain
}

#S3 bucket Endpoint
output "wensite_bucket_endpoint" {
  description = "Endpoint of the bucket"
  value       = module.website_s3_bucket.endpoint
}