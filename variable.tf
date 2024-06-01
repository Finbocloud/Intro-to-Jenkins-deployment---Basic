variable "rg_name" {
  description = "resourcegroup name"
  type        = string
  default     = "rg"
}
variable "owner" {
  description = "resource owner"
  type        = string
  default     = "test"
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
  default     = "infra-flexibleserver"
}
variable "flexible_server_db" {
  description = "Mysql flexibleserverdb"
  type        = string
  default     = "infra-flexibledb"
}
variable "network_nsg" {
  description = "network security group"
  type        = string
  default     = "infra-nsg"
}
variable "vnet" {
  description = "virtual network"
  type        = string
  default     = "infra-vnet"
}
variable "nic" {
  description = "network interface card"
  type        = string
  default     = "infra-nic"
}
variable "public_ip" {
  description = "public ip address"
  type        = string
  default     = "infra-pip"
}
variable "subnet" {
  description = "subnet"
  type        = string
  default     = "infra-subnet"
}
variable "ip_config" {
  description = "ip configuration"
  type        = string
  default     = "infra-ip-config"
}

variable "network_security_rule" {
  description = "network security group rule"
  type        = string
  default     = "infra-nsg-rule"
}
#new variable to send to onas  
variable "vm_nsg_name" {
  description = "vm network security group name"
  type        = string
  default     = "vm-nsg"
}