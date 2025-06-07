# Terraform GitHub Provider Practice

Practice Terraform using the GitHub provider.

## Lint checks

```bash
make format
```

## Notes

- Generate Terraform Cloud API token with `terraform login` (Store it in Github Actions secrets under TF_API_TOKEN)
- We should store the terraform state remotely so that there is a single source of truth across multiple collaborators (this repo uses Terraform Cloud and it is possible to use AWS, GCP, etc.)
