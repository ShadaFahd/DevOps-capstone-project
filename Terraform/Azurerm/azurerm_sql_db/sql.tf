resource "azurerm_mssql_server" "sql_server" {
  name                         = "${var.prefix}-sqlserver"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.server_version
  administrator_login          = var.username
  administrator_login_password = var.password

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_mssql_database" "sql_db" {
  name               = var.sql_database_name
  server_id          = azurerm_mssql_server.sql_server.id
  collation          = var.collation
  sku_name           = var.sku_name
  max_size_gb        = var.dbsize
  zone_redundant     = var.zone_redundant
}
resource "azurerm_mssql_firewall_rule" "allow_aks_ip" {
  name             = var.mssql_firewall_rule_name
  server_id        = azurerm_mssql_server.sql_server.id
  start_ip_address = var.mssql_firewall_rule_ip_address
  end_ip_address   = var.mssql_firewall_rule_ip_address
}
