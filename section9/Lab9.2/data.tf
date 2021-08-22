# Data 

data "azurerm_key_vault" "skye-vault" {
  name                = "skye-vault-02"
  resource_group_name = "skyelab-env-rg"
}

data "azurerm_key_vault_secret" "skye-vault" {
  name         = "admin-password"
  key_vault_id = data.azurerm_key_vault.skye-vault.id
}
