resource "github_organization_settings" "this" {
  billing_email                                                = var.github_org_settings.billing_email
  company                                                      = var.github_org_settings.company
  blog                                                         = var.github_org_settings.blog
  email                                                        = var.github_org_settings.email
  twitter_username                                             = var.github_org_settings.twitter_username
  location                                                     = var.github_org_settings.location
  name                                                         = var.github_org_settings.name
  description                                                  = var.github_org_settings.description
  has_organization_projects                                    = var.github_org_settings.has_organization_projects
  has_repository_projects                                      = var.github_org_settings.has_repository_projects
  default_repository_permission                                = var.github_org_settings.default_repository_permission
  members_can_create_repositories                              = var.github_org_settings.members_can_create_repositories
  members_can_create_public_repositories                       = var.github_org_settings.members_can_create_public_repositories
  members_can_create_private_repositories                      = var.github_org_settings.members_can_create_private_repositories
  members_can_create_internal_repositories                     = var.github_org_settings.members_can_create_internal_repositories
  members_can_create_pages                                     = var.github_org_settings.members_can_create_pages
  members_can_create_public_pages                              = var.github_org_settings.members_can_create_public_pages
  members_can_create_private_pages                             = var.github_org_settings.members_can_create_private_pages
  members_can_fork_private_repositories                        = var.github_org_settings.members_can_fork_private_repositories
  web_commit_signoff_required                                  = var.github_org_settings.web_commit_signoff_required
  advanced_security_enabled_for_new_repositories               = var.github_org_settings.advanced_security_enabled_for_new_repositories
  dependabot_alerts_enabled_for_new_repositories               = var.github_org_settings.dependabot_alerts_enabled_for_new_repositories
  dependabot_security_updates_enabled_for_new_repositories     = var.github_org_settings.dependabot_security_updates_enabled_for_new_repositories
  dependency_graph_enabled_for_new_repositories                = var.github_org_settings.dependency_graph_enabled_for_new_repositories
  secret_scanning_enabled_for_new_repositories                 = var.github_org_settings.secret_scanning_enabled_for_new_repositories
  secret_scanning_push_protection_enabled_for_new_repositories = var.github_org_settings.secret_scanning_push_protection_enabled_for_new_repositories
}
