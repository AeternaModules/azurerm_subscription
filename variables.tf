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
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.alias == null || (length(v.alias) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.subscription_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.subscription_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

