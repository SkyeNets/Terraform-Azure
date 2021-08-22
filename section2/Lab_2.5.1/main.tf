# Azure Resource Group for KeyVault secret Management

# Azure Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "SkyeLab-rg"
  location = "East US"
}

# Data Azure Client Configuration
data "azurerm_client_config" "current" {}

# Azure Key Vault
resource "azurerm_key_vault" "rg" {
  name                = "skye-vault-001"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "get", "list", "create", "delete", "update",
    ]
    secret_permissions = [
      "get", "list", "set", "delete",
    ]
  }
}

# Azure Storage Account
resource "azurerm_storage_account" "rg" {
  name                     = "skyeremotesa001"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

