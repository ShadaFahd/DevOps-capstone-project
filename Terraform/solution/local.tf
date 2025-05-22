locals {
  prefix                  = "devops1-capstone-queens"
  location                = "eastus"
  default_node_pool_name  = "queens"
  vm_size                 = "Standard_A2_v2"

  sql_db = {
    username              = "queens-assignment"
    collation             = "SQL_Latin1_General_CP1_CI_AS"
    password              = "m/2.71.0/do"
    server_version        = "12.0"
    dbsize                = 1
    zone_redundant        = false
    sql_database_name     = "queens-db"
    sku_name              = "Basic"
    storage_account_type  = "Local"
  }
}
