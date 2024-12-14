# GitHub Organization Example: Complete Configuration

This example demonstrates how to fully manage GitHub organization settings using the `tfstack/org/github` Terraform module. It provides a complete configuration, showcasing all available settings.

## Overview

This setup allows you to configure a GitHub organization comprehensively, including repository permissions, member privileges, and advanced security features. All optional settings are explicitly defined, offering fine-grained control over the organization's behavior.

### Key Features

- **Comprehensive Setup**: All organization settings are configurable.
- **Fine-Grained Control**: Customize member permissions, security features, and default repository settings.
- **Enterprise Support**: Includes options for GitHub Enterprise organizations.

## Usage

1. Clone the repository and navigate to the example directory:

    ```bash
    git clone https://github.com/tfstack/terraform-github-org.git
    cd examples/complete
    ```

2. Initialize and apply the Terraform configuration:

    ```bash
    terraform init
    terraform apply
    ```

3. Modify variables in `main.tf` to suit your specific requirements.

## Customization

The `github_org_settings` variable in the `main.tf` file is configured with all possible settings. Modify values as needed to customize your GitHub organization.

## Example Code

Below is a complete example configuration:

```hcl
module "github_org" {
  source = "../.."

  github_owner = "your-organization-name"

  github_org_settings = {
    billing_email                                                = "billing@example.com"
    company                                                      = "Example Company"
    blog                                                         = "https://example.com"
    email                                                        = "contact@example.com"
    twitter_username                                             = "example_twitter"
    location                                                     = "Example City, Country"
    name                                                         = "Example Organization"
    description                                                  = "This is an example GitHub organization configuration."
    has_organization_projects                                    = true
    has_repository_projects                                      = true
    default_repository_permission                                = "read"
    members_can_create_repositories                              = true
    members_can_create_public_repositories                       = true
    members_can_create_private_repositories                      = true
    members_can_create_internal_repositories                     = false
    members_can_create_pages                                     = true
    members_can_create_public_pages                              = true
    members_can_create_private_pages                             = true
    members_can_fork_private_repositories                        = false
    web_commit_signoff_required                                  = false
    advanced_security_enabled_for_new_repositories               = false
    dependabot_alerts_enabled_for_new_repositories               = false
    dependabot_security_updates_enabled_for_new_repositories     = false
    dependency_graph_enabled_for_new_repositories                = false
    secret_scanning_enabled_for_new_repositories                 = false
    secret_scanning_push_protection_enabled_for_new_repositories = false
  }
}
```
