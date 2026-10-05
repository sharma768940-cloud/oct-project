variable "rgs_details" {
    type = map(object({
        name       = string
        location   = string
        managed_by = string
        tags       = map(string)
    }))
}

variable "subnets" {
   type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
    service_endpoints    = optional(list(string), [])
  }))
}


variable "nsgs" {
  type = map(object({
    name        = string
    rg_name     = string
    rg_location = string
    tags        = map(string)
  }))
}

variable "sec_rule" {
  type = map(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}