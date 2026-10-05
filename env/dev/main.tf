module "rg" {
  source = "../../module/rg"
  rgs    = var.rgs_details
}

module "subnet" {
  source          = "../../module/subnet"
  subnets_details = var.subnets_details
}

module "nsg" {
  source      = "../../module/nsg"
  nsgs        = var.nsgs_details
  sec_rule    = var.sec_rule
}


module "pip" {
  source = "../../module/pip"
  pips   = var.pips_details
}

module "pip_nsg_asso" {
  source = "../../module/pip-nsg-asso"
}

module "subnet_nsg_asso" {
  source = "../../module/subnet-nsg-asso"
}