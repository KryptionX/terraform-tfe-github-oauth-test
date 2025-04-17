terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.64.0"
    }
  }
}

provider "tfe" {
  hostname = var.hostname
  token    = var.token
}

resource "tfe_oauth_client" "github" {
  organization     = var.org
  name             = var.client_name
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.github_pat
  service_provider = "github"
}
