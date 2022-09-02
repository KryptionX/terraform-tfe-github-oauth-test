variable "hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "FQDN of the host in question. Defaults to 'app.terraform.io'"
}
variable "name" {
  type        = string
  default     = "GitHub (Your_Username)"
  description = "Name of the GitHub client connection saved in the Providers tab." # Recommend "GitHub (Your_Username)" for easy identification
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
