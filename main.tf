module "resource_group" {
    source  = "./modules/resource_group"

    r_name  = var.rg_name
    r_loc   = var.rg_region
}

module "storage_account" {
    source  = "./modules/storage_account"

    a_name = var.s_account_name
    r_name = module.resource_group.name
    r_loc = module.resource_group.location

    depends_on = [
      module.resource_group
    ]
}

module "virtual_machine" {
    source  = "./modules/virtual_machine"

    prefix = var.vm_prefix
    r_name = module.resource_group.name
    r_loc = module.resource_group.location

    depends_on = [
      module.resource_group
    ]
}