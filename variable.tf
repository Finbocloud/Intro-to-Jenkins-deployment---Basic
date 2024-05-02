variable "rg_name" {
  description = "resourcegroup name"
  type        = string
  default     = "rg"
}
variable "owner" {
  description = "resource owner"
  type        = string
  default     = "infra"
}
variable "environment" {
  description = "resource environment"
  type        = string
  default     = "pj"
}
variable "location" {
  description = "resourcegroup location"
  type        = string
  default     = "uksouth"
}
variable "win_vm_name" {
  description = "windows vm name"
  type        = string
  default     = "infra-winvm"
}
variable "win_vm_username" {
  description = "windows username"
  type        = string
  default     = "adminuser"
}
variable "win_vm_password" {
  description = "windows password"
  type        = string
  default     = "P@$$w0rd1234!"
}
variable "flexible_server_name" {
  description = "Mysql flexibleserver"
  type        = string
  default     = "flexibleserver"
}
variable "flexible_server_db" {
  description = "Mysql flexibleserverdb"
  type        = string
  default     = "flexibledb"
}
variable "vnet" {
  description = "virtual network"
  type        = string
  default     = "vnet"
}
variable "nic" {
  description = "network interface card"
  type        = string
  default     = "nic"
}
variable "public_ip" {
  description = "public ip address"
  type        = string
  default     = "public_ip"
}
variable "subnet" {
  description = "network subnet"
  type        = string
  default     = "subnet"
}
variable "ip_config" {
  description = "ip configuration"
  type        = string
  default     = "ip-config"
}
variable "database_network_security_rule_name" {
  description = "network security group rule"
  type        = string
  default     = "infra-nsg-rule"
}


