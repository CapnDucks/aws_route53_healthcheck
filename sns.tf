resource "aws_sns_topic" "this" {
  name         = "${var.name}-${terraform.workspace}-r53-healthcheck"
  display_name = "Healthcheck for ${var.name}-${terraform.workspace}"
  delivery_policy = jsonencode({
    "http" : {
      "defaultHealthyRetryPolicy" : {
        "minDelayTarget" : 20,
        "maxDelayTarget" : 20,
        "numRetries" : 3,
        "numMaxDelayRetries" : 0,
        "numNoDelayRetries" : 0,
        "numMinDelayRetries" : 0,
        "backoffFunction" : "linear"
      },
      "disableSubscriptionOverrides" : false,
      "defaultThrottlePolicy" : {
        "maxReceivesPerSecond" : 1
      }
    }
  })
}

resource "aws_sns_topic_subscription" "this" {
  count                  = length(var.email_endpoints)
  topic_arn              = aws_sns_topic.this.arn
  protocol               = "email"
  endpoint               = var.email_endpoints[count.index]
  endpoint_auto_confirms = "true"
}
