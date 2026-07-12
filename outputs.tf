output "subscriptions_alias" {
  description = "Map of alias values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.alias }
}
output "subscriptions_billing_scope_id" {
  description = "Map of billing_scope_id values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.billing_scope_id }
}
output "subscriptions_subscription_id" {
  description = "Map of subscription_id values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.subscription_id }
}
output "subscriptions_subscription_name" {
  description = "Map of subscription_name values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.subscription_name }
}
output "subscriptions_tags" {
  description = "Map of tags values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.tags }
}
output "subscriptions_tenant_id" {
  description = "Map of tenant_id values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.tenant_id }
}
output "subscriptions_workload" {
  description = "Map of workload values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in azurerm_subscription.subscriptions : k => v.workload }
}

