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
  # --- Unconfirmed validation candidates, derived from azurerm_subscription's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: subscription_name
  #   source:    validate.SubscriptionName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: alias
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: billing_scope_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: workload
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: subscription_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

