variable "subscription_id"{
    description = "subscription id"
    type = string
}

variable "rg_name" {
    description = "name of rg"
    type = string

}

variable "location" {
    description = "location hi kehde"
    type = string

}
variable "nsg_name" {
    description = "nsg name"
    type = string
}
variable "vnet_name" {
    description = "vnet name"
    type = string
}
variable "address_space" {
    description = "ip address name"
    type = string
}
variable "dns_servers" {
    description = "dns name"
    type = string
}
variable "subnet_name" {
    description = "subnet name"
    type = string
}
variable "subnet_address_prefix" {
    description = "port range "
    type = string
}
variable "security_rule_name" {
    description = "port range "
    type = string
}
variable "security_rule_priority" {
    description = "port range "
    type = string
}
variable "security_rule_direction" {
    description = "port range "
    type = string
}
variable "security_rule_access" {
    description = "port range "
    type = string
}
variable "security_rule_protocol" {
    description = "port range "
    type = string
}
variable "aks_name"{
    description = "name of aks"
    type = string
}
variable "dns_prefix"{
    description = "dns detail"
    type = string
}
variable "node_pool_name"{
    description = "name of node pool"
    type = string
}
variable "node_count"{
    description = "number of node"
    type = string
}
variable "vm_size"{
    description = "size of vm"
    type = string
}
variable "Environment"{
    description = "name of ENV"
    type = string
}
variable "vnet_subnet_id" {
    description = "subnet id"
    type = string
}