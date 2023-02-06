locals {
  type = upper(var.type)
}

resource "aws_route53_health_check" "this" {
  fqdn              = var.fqdn
  port              = var.port
  type              = local.type
  resource_path     = var.resource_path
  failure_threshold = var.failure_threshold
  request_interval  = var.request_interval
  measure_latency   = var.measure_latency

  tags = merge(
    {
      Name   = "${var.name}-${terraform.workspace}"
      module = "aws_route53_healthcheck"
  })
}
