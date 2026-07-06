output "subscriptions" {
  description = "All subscription resources"
  value       = azurerm_subscription.subscriptions
}
output "subscriptions_alias" {
  description = "List of alias values across all subscriptions"
  value       = [for k, v in azurerm_subscription.subscriptions : v.alias]
}
output "subscriptions_billing_scope_id" {
  description = "List of billing_scope_id values across all subscriptions"
  value       = [for k, v in azurerm_subscription.subscriptions : v.billing_scope_id]
}
output "subscriptions_subscription_id" {
  description = "List of subscription_id values across all subscriptions"
  value       = [for k, v in azurerm_subscription.subscriptions : v.subscription_id]
}
output "subscriptions_subscription_name" {
  description = "List of subscription_name values across all subscriptions"
  value       = [for k, v in azurerm_subscription.subscriptions : v.subscription_name]
}
output "subscriptions_tags" {
  description = "List of tags values across all subscriptions"
  value       = [for k, v in azurerm_subscription.subscriptions : v.tags]
}
output "subscriptions_tenant_id" {
  description = "List of tenant_id values across all subscriptions"
  value       = [for k, v in azurerm_subscription.subscriptions : v.tenant_id]
}
output "subscriptions_workload" {
  description = "List of workload values across all subscriptions"
  value       = [for k, v in azurerm_subscription.subscriptions : v.workload]
}

