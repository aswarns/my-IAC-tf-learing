# Call our Custom Terraform Module which we built earlier

module "website_s3_bucket" {
  source  = "app.terraform.io/terraform-aws-demo1-ashish/aws-s3-website/terraform"
  version = "0.0.1"
  # insert required variables here
  bucket_name = var.my_s3_bucket
  tags        = var.my_s3_tags
}
