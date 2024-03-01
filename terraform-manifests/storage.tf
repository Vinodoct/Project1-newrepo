resource "azurerm_storage_account" "mysa" {
  name = "var.storage_account_name${random_string.myrandom.id}"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  account_tier = "standard"
  account_replication_type = "LRS"
}