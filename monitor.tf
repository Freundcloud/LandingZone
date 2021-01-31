resource "azurerm_monitor_diagnostic_setting" "monitor_lz" {
  count = var.provision ? 1 : 0

  name               = "monitor-lz"
  target_resource_id = azurerm_key_vault.kv_lz.id
  storage_account_id = azurerm_storage_account.blob_storage[0].id

  log {
    category = "AuditEvent"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"
    enabled  = false

    retention_policy {
      enabled = false
    }
  }
}