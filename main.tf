data "databricks_supervisor_agents" "supervisor_agents_lookup" {
  for_each = var.supervisor_agents_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

