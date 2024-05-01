variable "rg_name" {
  description = "resourcegroup name"
  type = string
  default = "rg"
}
variable "owner" {
    description = "resource owner"
    type = string
    default = "infra"
}
variable "environment" {
    description = "resource environment"
    type = string
    default = "pj"    
}
variable "location" {
    description = "resourcegroup location"
    type = string
    default = "uksouth"
}
variable "win_vm_name" {
    description = "windows vm name"
    type = string
    default = "infra-winvm"
}
variable "win_vm_username"{
    description = "windows username"
    type = string
    default = "adminuser"
}
variable "win_vm_password"{
    description = "windows password"
    type = string
    default = "P@$$w0rd1234!"
}
variable "flexible_server_name"{
    description = "Mysql flexibleserver"
    type = string
    default = "infra-flexibleserver"
}
variable "flexible_server_db"{
    description = "Mysql flexibleserverdb"
    type = string
    default = "infra-flexibledb"
}

