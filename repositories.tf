# github_repository is a predefined resource type by the GitHub provider. We cannot alter the name. 
# (https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository)
# But we can alter the resource's local name, i.e. "terraform-example-repo-1"
# The resource's local name must be unique within the terraform state

resource "github_repository" "terraform-example-repo-1" {
  name                        = "terraform-example-repo-1"
  description                 = "My first repository created with Terraform"
  visibility                  = "public"
  allow_merge_commit          = false
  allow_rebase_merge          = false
  allow_squash_merge          = true
  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "BLANK"
  delete_branch_on_merge      = true
  auto_init                   = true
}

resource "github_repository" "terraform-example-repo-2" {
  name                        = "terraform-example-repo-2"
  description                 = "My second repository created with Terraform"
  visibility                  = "public"
  allow_merge_commit          = false
  allow_rebase_merge          = false
  allow_squash_merge          = true
  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "BLANK"
  delete_branch_on_merge      = true
  auto_init                   = true
}
