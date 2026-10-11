output "mskconnect_custom_plugins_id" {
  description = "Map of id values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mskconnect_custom_plugins_arn" {
  description = "Map of arn values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "mskconnect_custom_plugins_content_type" {
  description = "Map of content_type values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.content_type if v.content_type != null && length(v.content_type) > 0 }
}
output "mskconnect_custom_plugins_description" {
  description = "Map of description values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.description if v.description != null && length(v.description) > 0 }
}
output "mskconnect_custom_plugins_latest_revision" {
  description = "Map of latest_revision values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.latest_revision if v.latest_revision != null }
}
output "mskconnect_custom_plugins_location" {
  description = "Map of location values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => one(v.location) if v.location != null && length(v.location) > 0 }
}
output "mskconnect_custom_plugins_name" {
  description = "Map of name values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mskconnect_custom_plugins_region" {
  description = "Map of region values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.region if v.region != null && length(v.region) > 0 }
}
output "mskconnect_custom_plugins_state" {
  description = "Map of state values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.state if v.state != null && length(v.state) > 0 }
}
output "mskconnect_custom_plugins_tags" {
  description = "Map of tags values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "mskconnect_custom_plugins_tags_all" {
  description = "Map of tags_all values across all mskconnect_custom_plugins, keyed the same as var.mskconnect_custom_plugins"
  value       = { for k, v in aws_mskconnect_custom_plugin.mskconnect_custom_plugins : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

