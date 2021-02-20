resource "aws_s3_bucket" "website" {
  bucket = "main-website"
  acl    = "public-read"
  tags   = var.default_tags
}
