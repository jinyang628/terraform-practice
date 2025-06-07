terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
  backend "remote" {
    organization = "jy-terraform" # Configured within terraform cloud (https://app.terraform.io)
    workspaces {
      name = "terraform-practice"
    }
  }
}

provider "github" {
  owner = "jy-terraform" # Name of the GitHub organization
  token = var.github_token
}
