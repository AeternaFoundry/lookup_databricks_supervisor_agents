output "supervisor_agents_lookup_page_size" {
  description = "Map of page_size values across all supervisor_agents_lookup, keyed the same as var.supervisor_agents_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_supervisor_agents.supervisor_agents_lookup : k => v.page_size if v.page_size != null }
}
output "supervisor_agents_lookup_provider_config" {
  description = "Map of provider_config values across all supervisor_agents_lookup, keyed the same as var.supervisor_agents_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_supervisor_agents.supervisor_agents_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "supervisor_agents_lookup_supervisor_agents" {
  description = "Map of supervisor_agents values across all supervisor_agents_lookup, keyed the same as var.supervisor_agents_lookup except keys with no supervisor_agents are omitted"
  value       = { for k, v in data.databricks_supervisor_agents.supervisor_agents_lookup : k => v.supervisor_agents if v.supervisor_agents != null && length(v.supervisor_agents) > 0 }
}

