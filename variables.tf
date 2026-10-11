variable "supervisor_agents_lookup" {
  description = <<EOT
Map of supervisor_agents_lookup, attributes below
Optional:
    - page_size
    - provider_config
EOT

  type = map(object({
    page_size = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

