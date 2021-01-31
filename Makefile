.ONESHELL:
SHELL=/bin/bash

.PHONY:
dev:
	rm -rf .terraform
	source ./environments/dev/.env-dev.sh
	terraform init -backend-config=./environments/dev/backend.hcl
	terraform workspace select dev
	terraform plan -var-file=./environments/dev/dev.tfvars -out=./plan/plan-dev
	terraform graph -type=plan | dot -Tsvg > ./images/dev-plan.svg
	terraform apply "./plan/plan-dev"
dev-destroy:
	source ./environments/dev/.env-dev.sh
	terraform destroy -var-file=./environments/dev/dev.tfvars
sbx:
	rm -rf .terraform
	source ./environments/sbx/.env-sbx.sh
	terraform init -backend-config=./environments/sbx/backend.hcl
	terraform workspace new sbx
	terraform plan -var-file=./environments/sbx/sbx.tfvars -out=./plan/plan-sbx
	terraform graph -type=plan | dot -Tsvg > ./images/sbx-plan.svg
	terraform apply "./plan/plan-sbx"
sbx-destroy:
	source ./environments/sbx/.env-sbx.sh
	terraform destroy -var-file=./environments/sbx/sbx.tfvars
prod:
	rm -rf .terraform
	source ./environments/prod/.env-prod.sh
	terraform init -backend-config=./environments/prod/backend.hcl
	terraform workspace select prod
	terraform plan -var-file=./environments/prod/prod.tfvars -out=./plan/plan-prod
	terraform graph -type=plan | dot -Tsvg > ./images/prod-plan.svg
	terraform apply "./plan/plan-prod"
prod-destroy:
	source ./environments/prod/.env-prod.sh
	terraform destroy -var-file=./environments/prod/prod.tfvars