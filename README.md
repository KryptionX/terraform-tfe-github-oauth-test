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

| Name                                                            | Description                                                                                                                    | Type     | Required |
| --------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ | -------- | -------- |
| <a name="input_hostname"></a> [hostname](#input_hostname)       | FQDN of the host in question. Defaults to 'app.terraform.io'                                                                   | `string` | no       |
| <a name="input_name"></a> [name](#input_name)                   | Name of the GitHub client connection saved in the Providers tab." # Recommend "GitHub (Your_Username)" for easy identification | `string` | yes      |
| <a name="input_token"></a> [token](#input_token)                | User token with Owners team permissions                                                                                        | `string` | yes      |
| <a name="input_org"></a> [org](#input_org)                      | The name of the TFE/C Org you are wanting to attach this GitHub OAuth connection to.                                           | `string` | yes      |
| <a name="input_github_pat"></a> [github_pat](#input_github_pat) | Your GitHub user Personal Access Token. Can be obtained via https://github.com/settings/tokens                                 | `string` | yes      |

## Usage

Located in the examples/github folder is a plug and play example that you can clone into your own repo of choice, add as a new workspace in Terraform Cloud and the initial configuration wizard will prompt you to add your required variables. Plan, Apply and BAM, your GitHub VCS connection is ready to go on your instance.

When provisioning new TFC/E instance(s) with your GitHub VCS connection, just change the variables within the workspace settings, plan/apply and you're off to the races.

```
module "github_oauth" {
  source  = "app.terraform.io/kryptionx/github-oauth/tfe"
  version = "0.1.0"

  hostname   = var.hostname
  name       = var.name
  token      = var.token
  org        = var.org
  github_pat = var.github_pat
}
```

<!-- END_TF_DOCS -->
