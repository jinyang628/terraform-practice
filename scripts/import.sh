#!/usr/bin/env bash
set -euo pipefail

# Get all GitHub repository resources from Terraform config
terraform state list | grep "github_repository" | while read -r tf_resource; do
  repo_name=$(terraform state show "$tf_resource" | grep -oP 'name\s+=\s+"\K[^"]+')
  
  echo "Importing $repo_name as $tf_resource..."
  terraform import "$tf_resource" "$repo_name" || echo "Skipping $repo_name (may already exist)"
done