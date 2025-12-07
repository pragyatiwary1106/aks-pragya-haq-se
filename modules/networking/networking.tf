resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.rg_name

  security_rule {
    name                       = var.security_rule_name
    priority                   = var.security_rule_priority
    direction                  = var.security_rule_direction
    access                     = var.security_rule_access
    protocol                   = var.security_rule_protocol
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_nam = var.rg_name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  subnet {
    name             = var.subnet_name
    address_prefixes = var.subnet_address_prefix
    security_group   = azurerm_network_security_group.nsg.id
  }

  tags = {
    Environment = var.Environment
  }
}