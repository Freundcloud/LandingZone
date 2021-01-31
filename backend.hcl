# use this in pipelines like this:
# terraform init -backend-config=backend.hcl
storage_account_name = "rertf9idv3h5x"
container_name       = "core-tfstate"
key                  = "core-terraform.tfstate"
resource_group_name  = "sbx-rer-tfstate-rg"