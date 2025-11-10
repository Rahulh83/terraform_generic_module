variable "nic" {
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