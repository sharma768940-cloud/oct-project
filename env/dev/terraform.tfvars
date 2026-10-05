rgs_details = {
  rg1 = {
    name       = "rg1"
    location   = "eastus"
    managed_by = "user1"
    tags       = {
      environment = "dev"
      project     = "oct-project"
    }
    
  }
}

subnets_details = {
  subnet1 = {
    name                 = "subnet1"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
} 

nsgs_details = {
  nsg1 = {
    name        = "nsg1"
    rg_name     = "rg1"
    rg_location = "eastus"
    tags        = {
      environment = "dev"
      project     = "oct-project"
    }
  }
}



