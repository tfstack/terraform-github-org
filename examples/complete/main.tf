module "github_org" {
  source = "tfstack/org/github"

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
