module "github_oauth" {
  source  = "app.terraform.io/kryptionx/github-oauth/tfe"
  version = "0.1.0"

  hostname   = var.hostname
  token      = var.token
  org        = var.org
  github_pat = var.github_pat
}
