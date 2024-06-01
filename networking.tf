

resource "azurerm_virtual_network" "this_rg_vnet" {
  name                = var.vnet
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.this_rg.location
  resource_group_name = azurerm_resource_group.this_rg.name
}

resource "azurerm_subnet" "this_rg_subnet" {
  name                 = var.subnet
  resource_group_name  = azurerm_resource_group.this_rg.name
  virtual_network_name = azurerm_virtual_network.this_rg_vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "this_rg_nic" {
  name                = var.nic
  location            = azurerm_resource_group.this_rg.location
  resource_group_name = azurerm_resource_group.this_rg.name

  ip_configuration {
    name                          = var.ip_config
    subnet_id                     = azurerm_subnet.this_rg_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.this_rg_publicip.id
  }
}

resource "azurerm_public_ip" "this_rg_publicip" {
  name                = var.public_ip
  resource_group_name = azurerm_resource_group.this_rg.name
  location            = azurerm_resource_group.this_rg.location
  allocation_method   = "Static"

  tags = local.tags
}