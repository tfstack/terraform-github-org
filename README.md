# terraform-github-org

Terraform module to manage GitHub Organization

## Set GitHub token

export GITHUB_TOKEN=ghp_xxx

### Required permission

- [] repo
- [] admin:org:write:org

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 6.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 6.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_organization_settings.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_settings) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_org_settings"></a> [github\_org\_settings](#input\_github\_org\_settings) | Settings for the GitHub organization. | <pre>object({<br/>    billing_email                                                = string<br/>    company                                                      = optional(string)<br/>    blog                                                         = optional(string)<br/>    email                                                        = optional(string)<br/>    twitter_username                                             = optional(string)<br/>    location                                                     = optional(string)<br/>    name                                                         = optional(string)<br/>    description                                                  = optional(string)<br/>    has_organization_projects                                    = optional(bool, true)<br/>    has_repository_projects                                      = optional(bool, true)<br/>    default_repository_permission                                = optional(string, "read")<br/>    members_can_create_repositories                              = optional(bool, true)<br/>    members_can_create_public_repositories                       = optional(bool, true)<br/>    members_can_create_private_repositories                      = optional(bool, true)<br/>    members_can_create_internal_repositories                     = optional(bool, false) # For Enterprise organizations<br/>    members_can_create_pages                                     = optional(bool, true)<br/>    members_can_create_public_pages                              = optional(bool, true)<br/>    members_can_create_private_pages                             = optional(bool, true)<br/>    members_can_fork_private_repositories                        = optional(bool, false)<br/>    web_commit_signoff_required                                  = optional(bool, false)<br/>    advanced_security_enabled_for_new_repositories               = optional(bool, false)<br/>    dependabot_alerts_enabled_for_new_repositories               = optional(bool, false)<br/>    dependabot_security_updates_enabled_for_new_repositories     = optional(bool, false)<br/>    dependency_graph_enabled_for_new_repositories                = optional(bool, false)<br/>    secret_scanning_enabled_for_new_repositories                 = optional(bool, false)<br/>    secret_scanning_push_protection_enabled_for_new_repositories = optional(bool, false)<br/>  })</pre> | n/a | yes |
| <a name="input_github_owner"></a> [github\_owner](#input\_github\_owner) | The GitHub user or organization that owns the team. | `string` | `null` | no |

## Outputs

No outputs.
