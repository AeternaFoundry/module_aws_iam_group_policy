variable "iam_group_policies" {
  description = <<EOT
Map of iam_group_policies, attributes below
Required:
    - group
    - policy
Optional:
    - name
    - name_prefix
EOT

  type = map(object({
    group       = string
    policy      = string
    name        = optional(string)
    name_prefix = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

