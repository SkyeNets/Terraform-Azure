# Data 

data "azurerm_key_vault" "skye-vault" {
  name                = "skye-vault-001"
  resource_group_name = "SkyeLab-rg"
}

data "azurerm_key_vault_secret" "skye-vault" {
  name         = "admin-password"
  key_vault_id = data.azurerm_key_vault.skye-vault.id
}
