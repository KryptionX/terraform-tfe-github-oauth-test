module "github_oauth" {
  source  = "app.terraform.io/kryptionx/github-oauth/tfe"
  version = "0.1.7"

  hostname    = var.hostname
  client_name = var.client_name
  token       = var.token
  org         = var.org
  github_pat  = var.github_pat
}
