module "RG1" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs

}

module "storage" {
  source = "../../modules/azurerm_storage_account"
  stgs   = var.stgs

}

module "vnet" {
    source = "../../modules/azurerm_virtual_network"
    vnets   = var.vnets
  
}