locals {
  frontdoors = { for k1, v1 in var.frontdoors : k1 => { backend_pool = v1.backend_pool, backend_pool_health_probe = v1.backend_pool_health_probe, backend_pool_load_balancing = v1.backend_pool_load_balancing, backend_pool_settings = v1.backend_pool_settings, friendly_name = v1.friendly_name, frontend_endpoint = v1.frontend_endpoint, load_balancer_enabled = v1.load_balancer_enabled, name = v1.name, resource_group_name = v1.resource_group_name, routing_rule = v1.routing_rule, tags = v1.tags } }

  frontdoor_rules_engines = merge([
    for k1, v1 in var.frontdoors : {
      for k2, v2 in coalesce(v1.frontdoor_rules_engines, {}) :
      "${k1}/${k2}" => merge(v2, {
        frontdoor_name = module.frontdoors.frontdoors_name["${k1}"]
      })
    }
  ]...)
}

module "frontdoors" {
  source     = "git::https://github.com/AeternaModules/azurerm_frontdoor.git?ref=v4.81.0"
  frontdoors = local.frontdoors
}

module "frontdoor_rules_engines" {
  source                  = "git::https://github.com/AeternaModules/azurerm_frontdoor_rules_engine.git?ref=v4.81.0"
  frontdoor_rules_engines = local.frontdoor_rules_engines
  depends_on              = [module.frontdoors]
}

