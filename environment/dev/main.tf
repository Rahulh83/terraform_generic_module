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
  vnets  = var.vnets

}

module "PIP" {
  source = "../../modules/azurerm_Public_IP"
  pip    = var.pipname

}

module "nic" {
  source  = "../../modules/azurerm_NIC"
  nic     = var.nicname
  subnets = var.subnets
  pip     = var.pipname

}