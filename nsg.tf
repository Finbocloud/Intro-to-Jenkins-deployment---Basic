resource "azurerm_network_security_group" "this_nsg" {
  name                = "${local.owner}-${local.environment}-${var.network_nsg}"
  location            = azurerm_resource_group.this_rg.location
  resource_group_name = azurerm_resource_group.this_rg.name
}

resource "azurerm_network_security_rule" "this_database_nsrule" {
  name                        = "${local.owner}-${local.environment}-${var.database_network_security_rule_name}"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3306"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.this_rg.name
  network_security_group_name = azurerm_network_security_group.this_nsg.name
}

resource "azurerm_subnet_network_security_group_association" "this_network_security_group_association" {
  subnet_id                 = azurerm_subnet.this_subnet.id
  network_security_group_id = azurerm_network_security_group.this_nsg.id
}