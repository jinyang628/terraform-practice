# Terraform GitHub Repository Management

This Terraform configuration creates and manages GitHub repositories with specific settings and branch protection rules.

## Prerequisites

- Terraform installed (version >= 1.0.0)
- GitHub account
- GitHub Personal Access Token (PAT) with the following permissions:
  - `repo` (Full control of private repositories)
  - `admin:org` (if managing organization repositories)

## Setup

1. Generate a GitHub Personal Access Token:
   - Go to GitHub.com → Settings → Developer Settings → Personal Access Tokens → Tokens (classic)
   - Generate a new token with the required permissions
   - Copy the token

2. Set up your environment:
   ```bash
   # For local development
   export GITHUB_TOKEN="your-github-token-here"
   ```

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Review the planned changes:
   ```bash
   terraform plan
   ```

5. Apply the changes:
   ```bash
   terraform apply
   ```

## Security Notes

- Never commit your GitHub token to version control
- The token is stored as an environment variable locally
- For CI/CD environments, store the token as a secret in your CI/CD platform

## Resources Created

- GitHub repository with MIT license
- Repository collaborator with admin permissions
- Branch protection rules

```bash
# Initialize terraform
terraform init
```

```bash
# Apply the changes
terraform apply
```