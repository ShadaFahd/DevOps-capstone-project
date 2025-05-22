output "sql_server_name" {
  value = module.sql_db.sql_server_name
}

output "sql_db_name" {
  value = module.sql_db.sql_db_name
}
output "kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}
