output "repository_name" {
  description = "The name of the created repository"
  value       = github_repository.terraform-example-repo.name
}

output "repository_url" {
  description = "The URL of the created repository"
  value       = github_repository.terraform-example-repo.html_url
} 