output "subscriptions_id" {
  description = "Map of id values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "subscriptions_alias" {
  description = "Map of alias values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "subscriptions_billing_scope_id" {
  description = "Map of billing_scope_id values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.billing_scope_id if v.billing_scope_id != null && length(v.billing_scope_id) > 0 }
}
output "subscriptions_subscription_id" {
  description = "Map of subscription_id values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}
output "subscriptions_subscription_name" {
  description = "Map of subscription_name values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.subscription_name if v.subscription_name != null && length(v.subscription_name) > 0 }
}
output "subscriptions_tags" {
  description = "Map of tags values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "subscriptions_tenant_id" {
  description = "Map of tenant_id values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "subscriptions_workload" {
  description = "Map of workload values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.workload if v.workload != null && length(v.workload) > 0 }
}

