# github_repository is a predefined resource type by the GitHub provider. We cannot alter the name.
# But we can alter the resource's local name, i.e. "terraform-example-repo-1"
resource "github_repository" "terraform-example-repo-1" {
  name             = local.repositories.terraform-example-repo-1
  description      = "My first repository created with Terraform"
  visibility       = "public"
  auto_init        = true
  license_template = "mit"
}

resource "github_repository" "terraform-example-repo-2" {
  name             = local.repositories.terraform-example-repo-2
  description      = "My second repository created with Terraform"
  visibility       = "public"
  auto_init        = true
  license_template = "mit"
} 