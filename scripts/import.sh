#!/usr/bin/env bash

set -euo pipefail

# List of repo resources
resources=(
  "github_repository.terraform-example-repo terraform-example-repo"
)

for resource in "${resources[@]}"; do
  tf_resource=$(echo "$resource" | awk '{print $1}')
  repo_name=$(echo "$resource" | awk '{print $2}')
  
  echo "Importing $repo_name as $tf_resource..."
  terraform import "$tf_resource" "$repo_name" || echo "Skipping import (may already exist)"
done