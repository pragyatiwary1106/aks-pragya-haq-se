output "nsg_name"{
    value= azurerm_network_security_group.nsg.name
}
output "vnet_name"{
    value= azurerm_virtual_network.vnet.name
}
output "address_space"{
    value= azurerm_virtual_network.vnet.address_space
}
output "dns_servers"{
    value= azurerm_virtual_network.vnet.dns_servers
}

output "address_prefixes"{
    value= azurerm_network_security_group.vnet.subnet[1].address_prefixes
}
output "subnet_name" {
  description = "The name of the subnet within the Virtual Network."
  # You reference the resource, then the block type, and then the index (0 for the first subnet)
  value       = azurerm_virtual_network.vnet.subnet[0].name
}