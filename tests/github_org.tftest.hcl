run "setup" {
  module {
    source = "./tests/setup"
  }
}

# Run setup to create a GitHub organization
run "setup_github_org" {
  variables {
    github_owner = "devto"

    github_org_settings = {
      billing_email = "billing@example.com"

    }
  }

  # Assert that the organization billing email is set correctly
  assert {
    condition     = github_org.this.billing_email == "billing@example.com"
    error_message = "GitHub organization billing email does not match 'billing@example.com'"
  }

  # Assert that the default repository permission is 'read'
  assert {
    condition     = github_org.this.default_repository_permission == "read"
    error_message = "Default repository permission does not match the expected value: 'read'"
  }
}
