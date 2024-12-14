module "github_org" {
  source = "tfstack/org/github"

  github_owner = "your-organization-name"

  github_org_settings = {
    billing_email = "your-billing-email@example.com"
  }
}
