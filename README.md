<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                   | Version   |
| ------------------------------------------------------ | --------- |
| <a name="requirement_tfe"></a> [tfe](#requirement_tfe) | ~> 0.32.0 |

## Providers

| Name                                             | Version   |
| ------------------------------------------------ | --------- |
| <a name="provider_tfe"></a> [tfe](#provider_tfe) | ~> 0.32.0 |

## Resources

| Name                                                                                                                | Type     |
| ------------------------------------------------------------------------------------------------------------------- | -------- |
| [tfe_oauth_client.github](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/oauth_client) | resource |

## Required Inputs

| Name                                                               | Description                                                                                                                                                                               | Type     | Required |
| ------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | -------- |
| <a name="input_hostname"></a> [hostname](#input_hostname)          | FQDN of the host in question. Example 'app.terraform.io' or 'shame-wizard.tf-support.hashicorpdemo.com.                                                                                   | `string` | yes      |
| <a name="input_client_name"></a> [client_name](#input_client_name) | Name of the GitHub client connection saved in the Providers tab. Using 'GitHub (Your_Username)' makes for easy identification in shared org environments.                                 | `string` | yes      |
| <a name="input_token"></a> [token](#input_token)                   | User token with Owners team permissions.                                                                                                                                                  | `string` | yes      |
| <a name="input_org"></a> [org](#input_org)                         | The name of the TFC/E Org you are wanting to attach this GitHub VCS connection to.                                                                                                        | `string` | yes      |
| <a name="input_github_pat"></a> [github_pat](#input_github_pat)    | Your GitHub user Personal Access Token. Please ensure your PAT is properly configured with SSO for any necessary HashiCorp orgs. Can be obtained using https://github.com/settings/tokens | `string` | yes      |

## Usage

Located both in the examples/github folder and in the code blocks below is a plug and play example of a `main.tf` and `variables.tf` file that you can clone into your own repo of choice, add as a new workspace in Terraform Cloud and the initial configuration wizard will prompt you to add your required variables. Run a Plan, Apply and BAM, your GitHub VCS connection is ready to go on your designated instance.

When provisioning new TFC/E instance(s) with your GitHub VCS connection, just change the variables within the workspace settings, plan/apply and you're off to the races. No need to Destroy anything... unless you want to progrmatically remove the VCS connection via Terraform of course.

Contents of `main.tf`

```
module "github_oauth" {
  source  = "app.terraform.io/kryptionx/github-oauth/tfe"
  version = "0.1.0"

  hostname     = var.hostname
  client_name  = var.client_name
  token        = var.token
  org          = var.org
  github_pat   = var.github_pat
}
```

Contents of `variables.tf`

```
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
  description = "Your GitHub user Personal Access Token. Can be obtained using https://github.com/settings/tokens"
  sensitive   = true
}
```

<!-- END_TF_DOCS -->
