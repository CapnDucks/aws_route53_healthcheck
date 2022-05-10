terraform {
  required_version = "~> 1.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
  default_tags {
    tags = {
      application = "terraform"
      contact     = "coder@organisation.com"
      environment = "dev"
      owner       = "Team Atmos"
      project     = "howto"
    }
  }
}
