terraform {
  required_version = "~> 0.14.5"
  required_providers {
    tfe = {
      version = "~> 0.24.0"
    }
  }
}

provider "tfe" {
    hostname = "tfe.is.hashicorpdemo.com"
}

resource "tfe_workspace" "appname-aws-webtier-1" {
  name         = "appname-aws-webtier-1"
  organization = "winterfell"
}

resource "tfe_workspace" "appname-aws-middleware-1" {
  name         = "appname-aws-middleware-1"
  organization = "winterfell"
}