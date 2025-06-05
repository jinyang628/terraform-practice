resource "github_repository" "terraform-example-repo" {
  name               = "terraform-example-repo"
  description        = "My repository created with Terraform"
  visibility         = "public"
  auto_init          = true
  license_template   = "mit"
  gitignore_template = "Terraform"
}

resource "github_repository_collaborator" "example" {
  repository = github_repository.terraform-example-repo.name
  username   = "SuveenE"
  permission = "admin"
}

resource "github_repository_ruleset" "example_ruleset" {
  name        = "example-ruleset"
  repository  = github_repository.terraform-example-repo.name
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
      require_code_owner_review      = true
    }
  }
}