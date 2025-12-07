variable "aks_name"{
    description = "name of aks"
    type = string
}
variable "location"{
    description = "location of aks"
    type = string
}
variable "rg_name"{
    description = "name of rg"
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