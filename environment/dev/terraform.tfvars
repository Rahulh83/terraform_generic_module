rgs = {
  rg1 = {
    name       = "rg-rh1"
    location   = "australiaeast"
    managed_by = "Terraform"
    tags = {
      env = "dev"
    }
  }

  rg2 = {
    name       = "rg-PK1"
    location   = "eastus"
    managed_by = "Terraform"
    tags = {
      env = "dev"
    }
  }
}

stgs = {
  stg1 = {
    name                     = "stgrh1"
    location                 = "australiaeast"
    resource_group_name      = "rg-rh1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Hot"
    min_tls_version          = "TLS1_2"
    account_kind             = "StorageV2"
    tags = {
      env = "dev"
    }
  }

  stg2 = {
    name                     = "stgpk1"
    location                 = "eastus"
    resource_group_name      = "rg-PK1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"
    min_tls_version          = "TLS1_2"
    account_kind             = "StorageV2"
    tags = {
      env = "dev"
    }
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-rh1"
    location            = "australiaeast"
    resource_group_name = "rg-rh1"
    address_space       = ["10.0.0.0/16"]
  }
  }
  