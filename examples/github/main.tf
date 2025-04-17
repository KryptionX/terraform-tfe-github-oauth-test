module "github_oauth" {
  source  = "app.terraform.io/hashicorp-support-eng/github-oauth/tfe"
  version = "0.2.0"

  hostname    = var.hostname
  client_name = var.client_name
  token       = var.token
  org         = var.org
  github_pat  = var.github_pat
}
