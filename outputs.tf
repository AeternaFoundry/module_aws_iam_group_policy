output "iam_group_policies_id" {
  description = "Map of id values across all iam_group_policies, keyed the same as var.iam_group_policies"
  value       = { for k, v in aws_iam_group_policy.iam_group_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_group_policies_group" {
  description = "Map of group values across all iam_group_policies, keyed the same as var.iam_group_policies"
  value       = { for k, v in aws_iam_group_policy.iam_group_policies : k => v.group if v.group != null && length(v.group) > 0 }
}
output "iam_group_policies_name" {
  description = "Map of name values across all iam_group_policies, keyed the same as var.iam_group_policies"
  value       = { for k, v in aws_iam_group_policy.iam_group_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_group_policies_name_prefix" {
  description = "Map of name_prefix values across all iam_group_policies, keyed the same as var.iam_group_policies"
  value       = { for k, v in aws_iam_group_policy.iam_group_policies : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "iam_group_policies_policy" {
  description = "Map of policy values across all iam_group_policies, keyed the same as var.iam_group_policies"
  value       = { for k, v in aws_iam_group_policy.iam_group_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}

