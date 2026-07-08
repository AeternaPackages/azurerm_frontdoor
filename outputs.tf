# --- azurerm_frontdoor ---
output "frontdoors" {
  description = "All frontdoor resources"
  value       = module.frontdoors.frontdoors
}
output "frontdoors_backend_pool" {
  description = "List of backend_pool values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.backend_pool]
}
output "frontdoors_backend_pool_health_probe" {
  description = "List of backend_pool_health_probe values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.backend_pool_health_probe]
}
output "frontdoors_backend_pool_health_probes" {
  description = "List of backend_pool_health_probes values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.backend_pool_health_probes]
}
output "frontdoors_backend_pool_load_balancing" {
  description = "List of backend_pool_load_balancing values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.backend_pool_load_balancing]
}
output "frontdoors_backend_pool_load_balancing_settings" {
  description = "List of backend_pool_load_balancing_settings values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.backend_pool_load_balancing_settings]
}
output "frontdoors_backend_pool_settings" {
  description = "List of backend_pool_settings values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.backend_pool_settings]
}
output "frontdoors_backend_pools" {
  description = "List of backend_pools values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.backend_pools]
}
output "frontdoors_cname" {
  description = "List of cname values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.cname]
}
output "frontdoors_explicit_resource_order" {
  description = "List of explicit_resource_order values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.explicit_resource_order]
}
output "frontdoors_friendly_name" {
  description = "List of friendly_name values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.friendly_name]
}
output "frontdoors_frontend_endpoint" {
  description = "List of frontend_endpoint values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.frontend_endpoint]
}
output "frontdoors_frontend_endpoints" {
  description = "List of frontend_endpoints values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.frontend_endpoints]
}
output "frontdoors_header_frontdoor_id" {
  description = "List of header_frontdoor_id values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.header_frontdoor_id]
}
output "frontdoors_load_balancer_enabled" {
  description = "List of load_balancer_enabled values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.load_balancer_enabled]
}
output "frontdoors_name" {
  description = "List of name values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.name]
}
output "frontdoors_resource_group_name" {
  description = "List of resource_group_name values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.resource_group_name]
}
output "frontdoors_routing_rule" {
  description = "List of routing_rule values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.routing_rule]
}
output "frontdoors_routing_rules" {
  description = "List of routing_rules values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.routing_rules]
}
output "frontdoors_tags" {
  description = "List of tags values across all frontdoors"
  value       = [for k, v in module.frontdoors.frontdoors : v.tags]
}


# --- azurerm_frontdoor_rules_engine ---
output "frontdoor_rules_engines" {
  description = "All frontdoor_rules_engine resources"
  value       = module.frontdoor_rules_engines.frontdoor_rules_engines
}
output "frontdoor_rules_engines_enabled" {
  description = "List of enabled values across all frontdoor_rules_engines"
  value       = [for k, v in module.frontdoor_rules_engines.frontdoor_rules_engines : v.enabled]
}
output "frontdoor_rules_engines_frontdoor_name" {
  description = "List of frontdoor_name values across all frontdoor_rules_engines"
  value       = [for k, v in module.frontdoor_rules_engines.frontdoor_rules_engines : v.frontdoor_name]
}
output "frontdoor_rules_engines_location" {
  description = "List of location values across all frontdoor_rules_engines"
  value       = [for k, v in module.frontdoor_rules_engines.frontdoor_rules_engines : v.location]
}
output "frontdoor_rules_engines_name" {
  description = "List of name values across all frontdoor_rules_engines"
  value       = [for k, v in module.frontdoor_rules_engines.frontdoor_rules_engines : v.name]
}
output "frontdoor_rules_engines_resource_group_name" {
  description = "List of resource_group_name values across all frontdoor_rules_engines"
  value       = [for k, v in module.frontdoor_rules_engines.frontdoor_rules_engines : v.resource_group_name]
}
output "frontdoor_rules_engines_rule" {
  description = "List of rule values across all frontdoor_rules_engines"
  value       = [for k, v in module.frontdoor_rules_engines.frontdoor_rules_engines : v.rule]
}



