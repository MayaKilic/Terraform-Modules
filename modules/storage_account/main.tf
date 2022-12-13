resource "azurerm_storage_account" "storage_account" {
  name                     = var.a_name
  resource_group_name      = var.r_name
  location                 = var.r_loc
  account_tier             = "Standard"
  account_replication_type = "LRS"
}