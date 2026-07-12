# --- azurerm_frontdoor ---
output "frontdoors_backend_pool" {
  description = "Map of backend_pool values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_backend_pool
}

output "frontdoors_backend_pool_health_probe" {
  description = "Map of backend_pool_health_probe values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_backend_pool_health_probe
}

output "frontdoors_backend_pool_health_probes" {
  description = "Map of backend_pool_health_probes values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_backend_pool_health_probes
}

output "frontdoors_backend_pool_load_balancing" {
  description = "Map of backend_pool_load_balancing values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_backend_pool_load_balancing
}

output "frontdoors_backend_pool_load_balancing_settings" {
  description = "Map of backend_pool_load_balancing_settings values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_backend_pool_load_balancing_settings
}

output "frontdoors_backend_pool_settings" {
  description = "Map of backend_pool_settings values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_backend_pool_settings
}

output "frontdoors_backend_pools" {
  description = "Map of backend_pools values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_backend_pools
}

output "frontdoors_cname" {
  description = "Map of cname values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_cname
}

output "frontdoors_explicit_resource_order" {
  description = "Map of explicit_resource_order values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_explicit_resource_order
}

output "frontdoors_friendly_name" {
  description = "Map of friendly_name values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_friendly_name
}

output "frontdoors_frontend_endpoint" {
  description = "Map of frontend_endpoint values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_frontend_endpoint
}

output "frontdoors_frontend_endpoints" {
  description = "Map of frontend_endpoints values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_frontend_endpoints
}

output "frontdoors_header_frontdoor_id" {
  description = "Map of header_frontdoor_id values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_header_frontdoor_id
}

output "frontdoors_load_balancer_enabled" {
  description = "Map of load_balancer_enabled values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_load_balancer_enabled
}

output "frontdoors_name" {
  description = "Map of name values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_name
}

output "frontdoors_resource_group_name" {
  description = "Map of resource_group_name values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_resource_group_name
}

output "frontdoors_routing_rule" {
  description = "Map of routing_rule values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_routing_rule
}

output "frontdoors_routing_rules" {
  description = "Map of routing_rules values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_routing_rules
}

output "frontdoors_tags" {
  description = "Map of tags values across all frontdoors, keyed the same as var.frontdoors"
  value       = module.frontdoors.frontdoors_tags
}

# --- azurerm_frontdoor_rules_engine ---
output "frontdoor_rules_engines_enabled" {
  description = "Map of enabled values across all frontdoor_rules_engines, keyed the same as var.frontdoor_rules_engines"
  value       = module.frontdoor_rules_engines.frontdoor_rules_engines_enabled
}

output "frontdoor_rules_engines_frontdoor_name" {
  description = "Map of frontdoor_name values across all frontdoor_rules_engines, keyed the same as var.frontdoor_rules_engines"
  value       = module.frontdoor_rules_engines.frontdoor_rules_engines_frontdoor_name
}

output "frontdoor_rules_engines_location" {
  description = "Map of location values across all frontdoor_rules_engines, keyed the same as var.frontdoor_rules_engines"
  value       = module.frontdoor_rules_engines.frontdoor_rules_engines_location
}

output "frontdoor_rules_engines_name" {
  description = "Map of name values across all frontdoor_rules_engines, keyed the same as var.frontdoor_rules_engines"
  value       = module.frontdoor_rules_engines.frontdoor_rules_engines_name
}

output "frontdoor_rules_engines_resource_group_name" {
  description = "Map of resource_group_name values across all frontdoor_rules_engines, keyed the same as var.frontdoor_rules_engines"
  value       = module.frontdoor_rules_engines.frontdoor_rules_engines_resource_group_name
}

output "frontdoor_rules_engines_rule" {
  description = "Map of rule values across all frontdoor_rules_engines, keyed the same as var.frontdoor_rules_engines"
  value       = module.frontdoor_rules_engines.frontdoor_rules_engines_rule
}


