locals {
  endpoint = lower("${var.type}://${var.fqdn}:${var.port}${var.resource_path}")
}

resource "aws_cloudwatch_metric_alarm" "this" {
  alarm_name          = "${var.name}-r53-healthcheck-failed-${terraform.workspace}"
  namespace           = var.cw_alarm_namespace
  metric_name         = var.cw_alarm_metric_name
  comparison_operator = var.cw_alarm_comparison_operator
  evaluation_periods  = var.cw_alarm_evaluation_periods
  period              = var.cw_alarm_period
  statistic           = var.cw_alarm_statistic
  threshold           = var.cw_alarm_threshold
  unit                = var.cw_alarm_unit

  alarm_description         = "This metric monitors whether the endpoint ( ${local.endpoint} ) is UP or DOWN"
  ok_actions                = [aws_sns_topic.this.arn]
  alarm_actions             = [aws_sns_topic.this.arn]
  insufficient_data_actions = [aws_sns_topic.this.arn]
  treat_missing_data        = "breaching"

  dimensions = {
    HealthCheckId = aws_route53_health_check.this.id
  }
}
