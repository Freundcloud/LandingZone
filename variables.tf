variable "environment" {
  default = "sbox"
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
    Approver = "X",
    ApplicationName = "x",
    BudgetAmount = "x",
    BusinessUnit = "x",
    CostCenter = "x",
    ServiceClass = "x",
    Location = "UKSOUTH"
  }
}

variable "provision_blob_storage" {
    default = true
}

variable "provision" {
    default = true
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
variable "acrname" {
  default = "aksdemosbxacr"
  }