variable "environment" {
  default     = "dev"
  description = "The name of the environment"
  type        = string
}

variable "apex_domain_name" {
  description = "The name of the apex domain to pull route53 information from"
  type        = string
}

variable "private_zone" {
  type        = bool
  default     = false
  description = "Is the apex_domain_name private"
}

variable "name" {
  description = "The name of the monitoring and subscription service"
  type        = string
}

variable "subscription_endpoint" {
  default     = ""
  description = "Endpoint to send data to (external services not created by terraform, like PagerDuty)"
  type        = string
}

variable "endpoint_auto_confirms" {
  type        = bool
  default     = true
  description = "Endpoint auto confirmation"
}

variable "fqdn" {
  description = "The FQDN of the endpoint to be monitored"
}

variable "subscription_endpoint_protocol" {
  default     = "email"
  description = "Endpoint protocol for SNS topic subscription" #You can use a MS Teams Channel e-mail address too - https://support.microsoft.com/en-us/office/send-an-email-to-a-channel-in-teams-d91db004-d9d7-4a47-82e6-fb1b16dfd51e
}

variable "port" {
  default     = "443"
  description = "The port of the endpoint to be monitored"
}

variable "type" {
  default     = "https"
  description = "The protocol to use when performing health checks. Valid values are HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED and CLOUDWATCH_METRIC"
}

variable "resource_path" {
  default     = "/"
  description = "The path that you want to request when performing health checks."
}

variable "failure_threshold" {
  default     = "3"
  description = "The number of consecutive health checks that an endpoint must pass or fail."
}

variable "request_interval" {
  default     = "30"
  description = "The number of seconds between the time that the health check gets a response from your endpoint and the time that it sends the next health check request."
}

variable "cw_alarm_namespace" {
  default     = "AWS/Route53"
  description = "Namespace of Cloudwatch metric alarm"
}

variable "cw_alarm_comparison_operator" {
  default     = "LessThanThreshold"
  description = "Comparison Operator of Cloudwatch metric alarm"
}

variable "cw_alarm_metric_name" {
  default     = "HealthCheckStatus"
  description = "Metric name of Cloudwatch metric alarm"
}

variable "cw_alarm_evaluation_periods" {
  default     = "1"
  description = "Evaluation periods of Cloudwatch metric alarm"
}

variable "cw_alarm_period" {
  default     = "60"
  description = "Period of Cloudwatch metric alarm"
}

variable "cw_alarm_statistic" {
  default     = "Minimum"
  description = "Statistic of Cloudwatch metric alarm"
}

variable "cw_alarm_threshold" {
  default     = "1"
  description = "Threshold of Cloudwatch metric alarm"
}

variable "cw_alarm_unit" {
  default     = "None"
  description = "Unit of Cloudwatch metric alarm"
}

variable "r53_failover_enabled" {
  type        = bool
  default     = false
  description = "Enabling creating secondary Failover R53 Record"
}

variable "email_endpoints" {
  default     = []
  description = "Email endpoints for SNS subscription"
  type        = any
}
