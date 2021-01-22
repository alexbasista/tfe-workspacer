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

resource "tfe_variable" "test" {
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

resource "tfe_variable" "test" {
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

resource "tfe_variable" "test" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "terraform"
  workspace_id = tfe_workspace.appname-aws-database-1.id
  description  = "a useful description"
}