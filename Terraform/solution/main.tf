module "resource_group" {
  source              = "../Azurerm/azurerm_resource_group"
  resource_group_name = "${local.prefix}-rg"
  location            = local.location
}

module "aks" {
  source                  = "../Azurerm/azurerm_aks"
  prefix                  = local.prefix
  location                = local.location
  resource_group_name     = module.resource_group.name
  default_node_pool_name  = local.default_node_pool_name
  vm_size                 = local.vm_size
  node_count              = 2
}

module "sql_db" {
  source              = "../Azurerm/azurerm_sql_db"
  prefix              = local.prefix
  location            = local.location
  resource_group_name = module.resource_group.name

  username            = local.sql_db.username
  password            = local.sql_db.password
  server_version      = local.sql_db.server_version
  sql_database_name   = local.sql_db.sql_database_name
  collation           = local.sql_db.collation
  sku_name            = local.sql_db.sku_name
  dbsize              = local.sql_db.dbsize
  zone_redundant      = local.sql_db.zone_redundant

  mssql_firewall_rule_name       = "Allow-AKS"
  mssql_firewall_rule_ip_address = "0.0.0.0" 
}

