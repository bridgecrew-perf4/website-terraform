resource "aws_route53_zone" "primary" {
  name = "website-${var.name_postfix}"
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "website-${var.name_postfix}"
  type    = "A"

  alias {
    name    = aws_s3_bucket.website.website_domain
    zone_id = aws_s3_bucket.website.hosted_zone_id

    evaluate_target_health = false
  }
}
