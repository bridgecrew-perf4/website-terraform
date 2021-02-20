resource "aws_s3_bucket" "website" {
  bucket = "website-${name_postfix}"
  acl  = "public-read"
  tags   = var.default_tagss

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

