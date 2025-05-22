variable "prefix" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type      = string
  sensitive = true
}

variable "server_version" {
  type = string
}

variable "sql_database_name" {
  type = string
}

variable "collation" {
  type = string
}

variable "sku_name" {
  type = string
}

variable "dbsize" {
  type = number
}

variable "zone_redundant" {
  type = bool
}
variable "mssql_firewall_rule_name" {
  description = "The name of the SQL firewall rule"
  type        = string
}

variable "mssql_firewall_rule_ip_address" {
  description = "Allowed IP address for the firewall rule"
  type        = string
  default     = "0.0.0.0"  # You can override this in main.tf
}
