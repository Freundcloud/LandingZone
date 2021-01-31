# company
variable "prefix" {
  type        = string
  description = "This variable defines the name of the company"
  default = "rer"
}
# environment
variable "environment" {
  type        = string
  description = "This variable defines the environment to be built"
  default = "sbx"
}
# azure region
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
  default     = "uksouth"
}