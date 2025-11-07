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
      name                   = string
      location               = string
      resource_group_name    = string
      address_space          = list(string)
      tags                   = optional(map(string))
    }))
    }