resource "github_repository" "terraform-example-repo-1" {
  name             = "terraform-example-repo-1"
  description      = "My first repository created with Terraform"
  visibility       = "public"
  auto_init        = true
  license_template = "mit"
}

resource "github_repository_ruleset" "example_ruleset_1" {
  name        = "example-ruleset"
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

resource "github_repository" "terraform-example-repo-2" {
  name             = "terraform-example-repo-2"
  description      = "My second repository created with Terraform"
  visibility       = "public"
  auto_init        = true
  license_template = "mit"
}

resource "github_repository_ruleset" "example_ruleset_2" {
  name        = "example-ruleset"
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