provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "website" {
  bucket = "main-website"
  acl    = "public-read"
  tags   = {}
}
