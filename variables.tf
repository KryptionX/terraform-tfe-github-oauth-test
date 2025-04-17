variable "hostname" {
  type        = string
  description = "FQDN of the host in question. Example 'app.terraform.io' or 'shame-wizard.tf-support.hashicorpdemo.com."
}
variable "client_name" {
  type        = string
  description = "Name of the GitHub client connection saved in the Providers tab. Using 'GitHub (Your_Username)' makes for easy identification in shared org environments."
}

variable "token" {
  type        = string
  description = "User token with Owners team permissions."
  sensitive   = true
}

variable "org" {
  type        = string
  description = "The name of the TFC/E Org you are wanting to attach this GitHub VCS connection to."
}

variable "github_pat" {
  type        = string
  description = "Your GitHub user Personal Access Token. Required scopes: repo, admin:org, admin:public_key, admin:repo_hook, admin:org_hook. Please ensure your PAT is properly configured with SSO for any necessary HashiCorp orgs. Can be obtained using https://github.com/settings/tokens"
  sensitive   = true
}
