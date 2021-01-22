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

### --- ws --- ###
resource "tfe_workspace" "appname-aws-webtier-1" {
  name         = "appname-aws-webtier-1"
  organization = "winterfell"
}

resource "tfe_variable" "testvar1" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "terraform"
  workspace_id = tfe_workspace.appname-aws-webtier-1.id
  description  = "a useful description"
}

### --- ws --- ###
resource "tfe_workspace" "appname-aws-middleware-1" {
  name         = "appname-aws-middleware-1"
  organization = "winterfell"
}

resource "tfe_variable" "testvar2" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "terraform"
  workspace_id = tfe_workspace.appname-aws-middleware-1.id
  description  = "a useful description"
}

### --- ws --- ###
resource "tfe_workspace" "appname-aws-database-1" {
  name         = "appname-aws-database-1"
  organization = "winterfell"
}

resource "tfe_variable" "testvar3" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "terraform"
  workspace_id = tfe_workspace.appname-aws-database-1.id
  description  = "a useful description"
}

resource "tfe_variable" "testvar4" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = "asdfadsfdsafdsafsdaasdfasdf"
  category     = "env"
  workspace_id = tfe_workspace.appname-aws-database-1.id
  description  = "a useful description"
  sensitive    = true
}