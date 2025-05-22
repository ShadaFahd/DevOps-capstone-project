variable "prefix" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "default_node_pool_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "node_count" {
  type    = number
  default = 2
}
