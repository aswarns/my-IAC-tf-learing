resource "aws_s3_bucket" "mys3bucket" {

  for_each = {
    "dev"   = "my-dapp-bucket"
    "qa"    = "my-dapp-bucket"
    "stage" = "my-dapp-bucket"
    "prod"  = "my-dapp-bucket"

  }

  bucket = "${each.key}-${each.value}"
  #acl    = "private"

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}