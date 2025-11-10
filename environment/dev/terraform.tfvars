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
    subnets = [{
      name             = "subnet-frontend"
      address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "subnet-backend"
        address_prefixes = ["10.0.2.0/24"]
    }]
} }

pipname = {
  pip1 = {
    name                = "pip-front"
    resource_group_name = "rg-rh1"
    location            = "australiaeast"
    allocation_method   = "Static"
    sku                 = "Standard"
    tags = {
      env = "dev"
    }
  }
  pip2 = {
    name                = "pip-back"
    resource_group_name = "rg-rh1"
    location            = "australiaeast"
    allocation_method   = "Static"
    sku                 = "Standard"
    tags = {
      env = "dev"
    }
  }
}
nicname = {
  nic1 = {
    name                = "nic-rh1"
    location            = "australiaeast"
    resource_group_name = "rg-rh1"
    ip_configuration = {
      name                          = "ipconfig-rh1"
      private_ip_address_allocation = "Dynamic"
    }
  }
}