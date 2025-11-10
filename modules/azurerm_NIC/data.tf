data "azurerm_subnet" "subnet" {
    for_each = var.subnets
  name                 = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "PIP" {
    for_each = var.pip
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  
}
