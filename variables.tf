variable "hostname" {
  type        = string
  description = "FQDN of the host in question. eg. 'app.terraform.io'"
}

variable "token" {
  type        = string
  description = "User token with Owners team permissions"
}

variable "org" {
  type        = string
  description = "The name of the TFE/C Org you are wanting to attach this GitHub OAuth connection to."
}

variable "github_pat" {
  type        = string
  description = "Your GitHub user Personal Access Token. Can be obtained via https://github.com/settings/tokens"
}
