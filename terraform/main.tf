provider "azurerm" {
  features {}
}

resource "azurerm_postgresql_server" "example" {
  name                = "postgresql-server-aa-demo-terraform"
  location            = "eastus"
  resource_group_name = "AALabRG"

  sku_name = "B_Gen5_2"

  storage_mb                   = 52224
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "psqladminun"
  administrator_login_password = "H@Sh1CoR3!"
  version                      = "11"
  ssl_enforcement_enabled      = true
}


resource "azurerm_postgresql_database" "example" {
  name                = "exampledb"
  resource_group_name = azurerm_postgresql_server.example.resource_group_name
  server_name         = azurerm_postgresql_server.example.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}