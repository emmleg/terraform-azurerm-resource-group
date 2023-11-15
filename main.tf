resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags     = merge(local.module_tags, var.tags)
}

resource "azurerm_management_lock" "lock" {
  count = var.lock_level == null ? 0 : 1

  name       = "${var.name}-lock"
  scope      = azurerm_resource_group.rg.id
  lock_level = var.lock_level
  notes      = "Resource is locked with '${var.lock_level}' management lock."
}