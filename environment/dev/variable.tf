variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}

variable "stgs" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
    access_tier              = optional(string)
    min_tls_version          = optional(string)
    account_kind             = string
    tags                     = optional(map(string))
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnets = optional(list(object({
      name             = string
      address_prefixes = list(string)
    })))
    tags = optional(map(string))
  }))
}

variable "pipname" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = string
    tags                = optional(map(string))
  }))
}

variable "nicname" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    ip_configuration = object({
      name                          = string
      private_ip_address_allocation = string
    })
  }))

}
variable "subnets" {
  type = map(object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
  }))
}
variable "pip" {
  type = map(object({
    name                = string
    resource_group_name = string
  }))

}
