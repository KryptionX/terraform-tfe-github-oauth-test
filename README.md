<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.32.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~> 0.32.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_oauth_client.github](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/oauth_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_pat"></a> [github\_pat](#input\_github\_pat) | Your GitHub user Personal Access Token. Can be obtained via https://github.com/settings/tokens | `string` | n/a | yes |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | FQDN of the host in question. eg. 'app.terraform.io' | `string` | n/a | yes |
| <a name="input_org"></a> [org](#input\_org) | The name of the TFE/C Org you are wanting to attach this GitHub OAuth connection to. | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | User token with Owners team permissions | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
