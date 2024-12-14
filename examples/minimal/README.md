# GitHub Organization Example: Minimal Configuration

This example demonstrates how to manage GitHub organization settings with minimal configuration using the `tfstack/org/github` Terraform module.

## Overview

This setup provides a lightweight approach to configuring essential GitHub organization settings, requiring only the mandatory `billing_email`. Defaults are applied to all other settings, ensuring a quick and straightforward configuration process.

### Key Features

- **Simple Setup**: Minimal required configuration for fast deployment.
- **Default Values**: Automatically applies sensible defaults for optional settings.
- **Customizable**: Easily extend or override default values as needed.

## Usage

1. Clone the repository and navigate to the example directory:

    ```bash
    git clone https://github.com/tfstack/terraform-github-org.git
    cd examples/minimal
    ```

2. Initialize and apply the Terraform configuration:

    ```bash
    terraform init
    terraform apply
    ```

3. Modify variables in `main.tf` to suit your specific requirements, such as updating the `billing_email` or enabling advanced organization settings.

## Customization

- The `github_org_settings` variable allows you to configure additional organization settings beyond the minimal setup, including:
  - Default repository permissions
  - Advanced security settings
  - Member permissions for creating repositories and pages
- Update `main.tf` to override default settings.

## Notes

- **Mandatory Field**: The `billing_email` must be provided and cannot be empty.
- **Defaults**: Most optional fields have default values to simplify the setup.
- **Enterprise Support**: Some settings, such as `members_can_create_internal_repositories`, apply only to GitHub Enterprise organizations.

## Example Code

Below is a basic example configuration:

```hcl
module "github_org" {
  source = "tfstack/org/github"

  github_owner = "your-organization-name"

  github_org_settings = {
    billing_email = "your-billing-email@example.com"
  }
}
```
