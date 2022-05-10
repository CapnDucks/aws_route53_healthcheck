## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_route53_health_check.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_health_check) | resource |
| [aws_sns_topic.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_region.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apex_domain_name"></a> [apex\_domain\_name](#input\_apex\_domain\_name) | The name of the apex domain to pull route53 information from | `string` | n/a | yes |
| <a name="input_cw_alarm_comparison_operator"></a> [cw\_alarm\_comparison\_operator](#input\_cw\_alarm\_comparison\_operator) | Comparison Operator of Cloudwatch metric alarm | `string` | `"LessThanThreshold"` | no |
| <a name="input_cw_alarm_evaluation_periods"></a> [cw\_alarm\_evaluation\_periods](#input\_cw\_alarm\_evaluation\_periods) | Evaluation periods of Cloudwatch metric alarm | `string` | `"1"` | no |
| <a name="input_cw_alarm_metric_name"></a> [cw\_alarm\_metric\_name](#input\_cw\_alarm\_metric\_name) | Metric name of Cloudwatch metric alarm | `string` | `"HealthCheckStatus"` | no |
| <a name="input_cw_alarm_namespace"></a> [cw\_alarm\_namespace](#input\_cw\_alarm\_namespace) | Namespace of Cloudwatch metric alarm | `string` | `"AWS/Route53"` | no |
| <a name="input_cw_alarm_period"></a> [cw\_alarm\_period](#input\_cw\_alarm\_period) | Period of Cloudwatch metric alarm | `string` | `"60"` | no |
| <a name="input_cw_alarm_statistic"></a> [cw\_alarm\_statistic](#input\_cw\_alarm\_statistic) | Statistic of Cloudwatch metric alarm | `string` | `"Minimum"` | no |
| <a name="input_cw_alarm_threshold"></a> [cw\_alarm\_threshold](#input\_cw\_alarm\_threshold) | Threshold of Cloudwatch metric alarm | `string` | `"1"` | no |
| <a name="input_cw_alarm_unit"></a> [cw\_alarm\_unit](#input\_cw\_alarm\_unit) | Unit of Cloudwatch metric alarm | `string` | `"None"` | no |
| <a name="input_email_endpoints"></a> [email\_endpoints](#input\_email\_endpoints) | Email endpoints for SNS subscription | `any` | `[]` | no |
| <a name="input_endpoint_auto_confirms"></a> [endpoint\_auto\_confirms](#input\_endpoint\_auto\_confirms) | Endpoint auto confirmation | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the environment | `string` | `"dev"` | no |
| <a name="input_failure_threshold"></a> [failure\_threshold](#input\_failure\_threshold) | The number of consecutive health checks that an endpoint must pass or fail. | `string` | `"3"` | no |
| <a name="input_fqdn"></a> [fqdn](#input\_fqdn) | The FQDN of the endpoint to be monitored | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the monitoring and subscription service | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | The port of the endpoint to be monitored | `string` | `"443"` | no |
| <a name="input_private_zone"></a> [private\_zone](#input\_private\_zone) | Is the apex\_domain\_name private | `bool` | `false` | no |
| <a name="input_r53_failover_enabled"></a> [r53\_failover\_enabled](#input\_r53\_failover\_enabled) | Enabling creating secondary Failover R53 Record | `bool` | `false` | no |
| <a name="input_request_interval"></a> [request\_interval](#input\_request\_interval) | The number of seconds between the time that the health check gets a response from your endpoint and the time that it sends the next health check request. | `string` | `"30"` | no |
| <a name="input_resource_path"></a> [resource\_path](#input\_resource\_path) | The path that you want to request when performing health checks. | `string` | `"/"` | no |
| <a name="input_subscription_endpoint"></a> [subscription\_endpoint](#input\_subscription\_endpoint) | Endpoint to send data to (external services not created by terraform, like PagerDuty) | `string` | `""` | no |
| <a name="input_subscription_endpoint_protocol"></a> [subscription\_endpoint\_protocol](#input\_subscription\_endpoint\_protocol) | Endpoint protocol for SNS topic subscription | `string` | `"email"` | no |
| <a name="input_type"></a> [type](#input\_type) | The protocol to use when performing health checks. Valid values are HTTP, HTTPS, HTTP\_STR\_MATCH, HTTPS\_STR\_MATCH, TCP, CALCULATED and CLOUDWATCH\_METRIC | `string` | `"https"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_environment"></a> [environment](#output\_environment) | n/a |
| <a name="output_sns_topic"></a> [sns\_topic](#output\_sns\_topic) | n/a |
