variable "rname" {
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
variable "winvm_name" {
    description = "windows vm name"
    type = string
    default = "infra-winvm"
}
variable "winvm_username"{
    description = "windows username"
    type = string
    default = "adminuser"
}
variable "winvm_password"{
    description = "windows password"
    type = string
    default = "P@$$w0rd1234!"
}
variable "felxibleserver_name"{
    description = "Mysql felxibleserver"
    type = string
    default = "infra-felxibleserver"
}
variable "felxibleserver_db"{
    description = "Mysql felxibleserverdb"
    type = string
    default = "infra-felxibledb"
}
