#!/usr/bin/env bash

set -euo pipefail

if [ ! -f repos.json ]; then
  echo "repos.json not found!"
  exit 1
fi

# Read JSON file and iterate over resources
jq -c '.[]' repos.json | while read -r repo; do
  tf_resource=$(echo "$repo" | jq -r '.resource')
  repo_name=$(echo "$repo" | jq -r '.name')
  
  echo "Importing $repo_name as $tf_resource..."
  terraform import "$tf_resource" "$repo_name" || echo "Skipping import for $repo_name (may already exist)"
done
