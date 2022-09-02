module "github_oauth" {
  source  = "app.terraform.io/kryptionx/github-oauth/tfe"
  version = "0.1.4"

  hostname   = var.hostname
  name       = var.client_name
  token      = var.token
  org        = var.org
  github_pat = var.github_pat
}
