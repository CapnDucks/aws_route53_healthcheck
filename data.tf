data "aws_region" "this" {
}

data "aws_route53_zone" "this" {
  name         = var.apex_domain_name
  private_zone = var.private_zone
}
