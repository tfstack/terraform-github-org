variable "github_owner" {
  description = "The GitHub user or organization that owns the team."
  type        = string
  default     = null
}

variable "github_org_settings" {
  description = "Settings for the GitHub organization."
  type = object({
    billing_email                                                = string
    company                                                      = optional(string)
    blog                                                         = optional(string)
    email                                                        = optional(string)
    twitter_username                                             = optional(string)
    location                                                     = optional(string)
    name                                                         = optional(string)
    description                                                  = optional(string)
    has_organization_projects                                    = optional(bool, true)
    has_repository_projects                                      = optional(bool, true)
    default_repository_permission                                = optional(string, "read")
    members_can_create_repositories                              = optional(bool, true)
    members_can_create_public_repositories                       = optional(bool, true)
    members_can_create_private_repositories                      = optional(bool, true)
    members_can_create_internal_repositories                     = optional(bool, false) # For Enterprise organizations
    members_can_create_pages                                     = optional(bool, true)
    members_can_create_public_pages                              = optional(bool, true)
    members_can_create_private_pages                             = optional(bool, true)
    members_can_fork_private_repositories                        = optional(bool, false)
    web_commit_signoff_required                                  = optional(bool, false)
    advanced_security_enabled_for_new_repositories               = optional(bool, false)
    dependabot_alerts_enabled_for_new_repositories               = optional(bool, false)
    dependabot_security_updates_enabled_for_new_repositories     = optional(bool, false)
    dependency_graph_enabled_for_new_repositories                = optional(bool, false)
    secret_scanning_enabled_for_new_repositories                 = optional(bool, false)
    secret_scanning_push_protection_enabled_for_new_repositories = optional(bool, false)
  })

  validation {
    condition     = length(trimspace(var.github_org_settings.billing_email)) > 0
    error_message = "The 'billing_email' must be provided and cannot be empty."
  }

  validation {
    condition     = contains(["read", "write", "admin", "none"], var.github_org_settings.default_repository_permission)
    error_message = "The 'default_repository_permission' must be one of 'read', 'write', 'admin', or 'none'."
  }
}
