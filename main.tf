resource "azurerm_subscription" "subscriptions" {
  for_each = var.subscriptions

  subscription_name = each.value.subscription_name
  alias             = each.value.alias
  billing_scope_id  = each.value.billing_scope_id
  subscription_id   = each.value.subscription_id
  tags              = each.value.tags
  workload          = each.value.workload
}

