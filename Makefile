.PHONY: format

format:
	terraform init
	terraform fmt
	terraform validate
