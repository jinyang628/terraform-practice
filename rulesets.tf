resource "github_repository_ruleset" "example_ruleset_1" {
  name        = "example-ruleset-repo-1"
  repository  = github_repository.terraform-example-repo-1.name
  target      = "branch"
  enforcement = "active"

  rules {
    creation                = false
    update                  = true
    deletion                = true
    required_linear_history = true

    required_signatures = true

    pull_request {
      required_approving_review_count = 1
      require_code_owner_review       = true
    }
  }
}

resource "github_repository_ruleset" "example_ruleset_2" {
  name        = "example-ruleset-repo-2"
  repository  = github_repository.terraform-example-repo-2.name
  target      = "branch"
  enforcement = "active"

  rules {
    creation                = false
    update                  = true
    deletion                = true
    required_linear_history = true

    required_signatures = true

    pull_request {
      required_approving_review_count = 1
      require_code_owner_review       = true
    }
  }
} 