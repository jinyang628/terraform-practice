.PHONY: format

format:
	terraform fmt
	terraform validate
	terraform init
