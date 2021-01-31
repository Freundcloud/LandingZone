#!/bin/bash

export RESOURCE_GROUP_NAME=sbx-tfstate-rg
export STORAGE_ACCOUNT_NAME=tstate$RANDOM
export CONTAINER_NAME=sbx-tstate

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location uksouth

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Get storage account key
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query [0].value -o tsv)

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key pXSMxrzVwIniIqWer/QICH/6O8tPcX8+Y6y2If1Y1Ks+Bt/LDsu65cwb5nx7TmOiIEsBOlOib03OljjmNFqCrg== $ACCOUNT_KEY

echo "storage_account_name: $STORAGE_ACCOUNT_NAME"
echo "container_name: $CONTAINER_NAME"
echo "access_key: $ACCOUNT_KEY"