resource "azurerm_key_vault" "kv_lz" {
  name                = "${var.prefix}-${var.environment}-lz-kv"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Decrypt",
      "Encrypt",
      "UnwrapKey",
      "WrapKey",
      "Verify",
      "Sign",
      "Purge"
    ]

    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "List",
      "Purge",
      "Restore",
      "Recover",
      "Backup"
    ]

    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers",
      "Purge"
    ]
  }

  tags = var.tags
}