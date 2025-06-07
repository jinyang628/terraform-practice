resource "github_repository" "terraform-example-repo-1" {
  name             = "terraform-example-repo-1"
  description      = "My first repository created with Terraform"
  visibility       = "public"
  auto_init        = true
  license_template = "mit"
}

resource "github_repository" "terraform-example-repo-2" {
  name             = "terraform-example-repo-2"
  description      = "My second repository created with Terraform"
  visibility       = "public"
  auto_init        = true
  license_template = "mit"
} 