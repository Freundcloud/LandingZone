variable "subscription_id" {
  type        = string
  description = "Azure Subscription Id"
}

variable "client_id" {
  type        = string
  description = "Azure Client Id/appId"
}

variable "client_secret" {
  type        = string
  description = "Azure Client Id/appId"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant Id"
}

variable "environment" {
  default = "sbx"
}

variable "prefix" {
  default = "aks-demo"
}

variable "location" {
  description = "Location of the cluster."
  default = "uksouth"
}

variable "tags" {
  type = map(string)

  default = {
    source = "terraform"
  }
}

variable "provision_blob_storage" {
    default = true
}

variable "provision" {
    default = false
}

variable "log_solutions" {
  description = "A list of solutions to add to the workspace. Should contain solution_name, publisher and product."
  type        = list(object({ solution_name = string, publisher = string, product = string }))
  default     = [
    {
            solution_name = "AzureAppGatewayAnalytics",
            publisher = "Microsoft",
            product = "OMSGallery/AzureAppGatewayAnalytics",
        },
    {
            solution_name = "KeyVaultAnalytics",
            publisher = "Microsoft",
            product = "OMSGallery/KeyVaultAnalytics",
        },
    {
            solution_name = "NetworkMonitoring",
            publisher = "Microsoft",
            product = "OMSGallery/NetworkMonitoring",
        },
    {
            solution_name = "ContainerInsights",
            publisher = "Microsoft",
            product = "OMSGallery/ContainerInsights",
        },
  ]
}