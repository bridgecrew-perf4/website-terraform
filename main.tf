resource "aws_s3_bucket" "website" {
  bucket = "website-${var.name_postfix}"
  acl    = "public-read"
  policy = data.aws_iam_policy_document.website_policy.json

  tags = var.default_tags

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

