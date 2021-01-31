# Introduction 

This repo contains infrastructure as code to install Azure services to support the RER application.

These services include:
- Azure DNS
- Azure KeyVault
- Azure NSG
- Azure Storage Accounts


## To run the code localy

There is a Makefile for running code localy. Please use it.

### Pre-requriments for running code localy

- kubectl
- azure cli
- jq
- envsubst
- terraform

### Internal Cluster

```bash
make $ENV-int
make $ENV-int-destroy
```

### External Cluster

```bash
make $ENV-ext
make $ENV-ext-destroy
```

## Index of repo

/environments = $ENV files

/images = plan .svg files for each environment

/pipelines = Azure Pipelines

/scripts = Shell script for creating SP for each environment

/modules = TF modules  ( not in use yet )
