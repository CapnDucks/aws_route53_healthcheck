output "sns_topic" {
  value = resource.aws_sns_topic.this
}

output "environment" {
  value = var.environment
}
