variable "subscriptions" {
  description = <<EOT
Map of subscriptions, attributes below
Required:
    - subscription_name
Optional:
    - alias
    - billing_scope_id
    - subscription_id
    - tags
    - workload
EOT

  type = map(object({
    subscription_name = string
    alias             = optional(string)
    billing_scope_id  = optional(string)
    subscription_id   = optional(string)
    tags              = optional(map(string))
    workload          = optional(string)
  }))
}

