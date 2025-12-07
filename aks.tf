module "rg" {
    source = "./modules/rg"
    rg_name = var.rg_name
    location = var.location
}

module "networking"{
    source = "./modules/networking"
    nsg_name = var.nsg_name
    location = module.rg.location
    rg_name = module.rg.rg_name
    security_rule_name = var.security_rule_name
    security_rule_access = var.security_rule_access
    security_rule_direction = var.security_rule_direction
    security_rule_priority = var.security_rule_priority
    security_rule_protocol = var.security_rule_protocol
    vnet_name = var.vnet_name
    address_space = var.address_space
    dns_servers = var.dns_servers
    subnet_name = var.subnet_name
    subnet_address_prefix = var.subnet_address_prefix
    Environment = var.Environment
}
module "aks"{
    source = "./modules/aks"
    aks_name = var.aks_name
    location = module.rg.location
    rg_name = module.rg.name
    dns_prefix = var.dns_prefix
    node_pool_name = var.node_pool_name
    node_count = var.node_count
    vm_size = var.vm_size
    vnet_subnet_id = module.networking.subnet_id.id
    Environment = var.Environment
}
