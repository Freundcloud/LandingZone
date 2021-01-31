locals {
  sku = "PerGB2018"
  retention_in_days = "30"
}

resource "azurerm_log_analytics_workspace" "logs" {
  name                = "${var.prefix}-${var.environment}-lz-logs"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = local.sku
  retention_in_days   = local.retention_in_days
}

resource "azurerm_log_analytics_solution" "logs" {
  count                 = length(var.log_solutions)
  solution_name         = var.log_solutions[count.index].solution_name
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  workspace_resource_id = azurerm_log_analytics_workspace.logs.id
  workspace_name        = azurerm_log_analytics_workspace.logs.name

  plan {
    publisher = var.log_solutions[count.index].publisher
    product   = var.log_solutions[count.index].product
  }
}