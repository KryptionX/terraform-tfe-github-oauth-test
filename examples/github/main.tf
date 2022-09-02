module "github_oauth" {
  source  = "app.terraform.io/kryptionx/github-oauth/tfe"
  version = "0.1.0"

  github_pat = var.github_pat
  hostname   = var.hostname
  org        = var.org
  token      = var.token
}
