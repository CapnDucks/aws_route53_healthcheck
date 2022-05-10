module "r53-hc" {
  source = "../"

  apex_domain_name      = "example.com"
  environment           = "test"
  name                  = "plex"
  port                  = 32400
  type                  = "HTTP"
  fqdn                  = "plex.example.com"
  resource_path         = "/web/index.html"
  subscription_endpoint = ""
  email_endpoints       = ["me@no.net", "some@another.org"]
}
