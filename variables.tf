variable "frontdoors" {
  description = <<EOT
Map of frontdoors, attributes below
Required:
    - name
    - resource_group_name
    - backend_pool (block)
    - backend_pool_health_probe (block)
    - backend_pool_load_balancing (block)
    - frontend_endpoint (block)
    - routing_rule (block)
Optional:
    - friendly_name
    - load_balancer_enabled
    - tags
    - backend_pool_settings (block)
Nested frontdoor_rules_engines (azurerm_frontdoor_rules_engine):
    Required:
        - name
        - resource_group_name
    Optional:
        - enabled
        - rule (block)
EOT

  type = map(object({
    name                  = string
    resource_group_name   = string
    friendly_name         = optional(string)
    load_balancer_enabled = optional(bool)
    tags                  = optional(map(string))
    backend_pool = list(object({
      backend = list(object({
        address     = string
        enabled     = optional(bool)
        host_header = string
        http_port   = number
        https_port  = number
        priority    = optional(number)
        weight      = optional(number)
      }))
      health_probe_name   = string
      load_balancing_name = string
      name                = string
    }))
    backend_pool_health_probe = list(object({
      enabled             = optional(bool)
      interval_in_seconds = optional(number)
      name                = string
      path                = optional(string)
      probe_method        = optional(string)
      protocol            = optional(string)
    }))
    backend_pool_load_balancing = list(object({
      additional_latency_milliseconds = optional(number)
      name                            = string
      sample_size                     = optional(number)
      successful_samples_required     = optional(number)
    }))
    frontend_endpoint = list(object({
      host_name                               = string
      name                                    = string
      session_affinity_enabled                = optional(bool)
      session_affinity_ttl_seconds            = optional(number)
      web_application_firewall_policy_link_id = optional(string)
    }))
    routing_rule = list(object({
      accepted_protocols = list(string)
      enabled            = optional(bool)
      forwarding_configuration = optional(object({
        backend_pool_name                     = string
        cache_duration                        = optional(string)
        cache_enabled                         = optional(bool)
        cache_query_parameter_strip_directive = optional(string)
        cache_query_parameters                = optional(list(string))
        cache_use_dynamic_compression         = optional(bool)
        custom_forwarding_path                = optional(string)
        forwarding_protocol                   = optional(string)
      }))
      frontend_endpoints = list(string)
      name               = string
      patterns_to_match  = list(string)
      redirect_configuration = optional(object({
        custom_fragment     = optional(string)
        custom_host         = optional(string)
        custom_path         = optional(string)
        custom_query_string = optional(string)
        redirect_protocol   = string
        redirect_type       = string
      }))
    }))
    backend_pool_settings = optional(list(object({
      backend_pools_send_receive_timeout_seconds   = optional(number)
      enforce_backend_pools_certificate_name_check = bool
    })))
    frontdoor_rules_engines = optional(map(object({
      name                = string
      resource_group_name = string
      enabled             = optional(bool)
      rule = optional(list(object({
        action = optional(object({
          request_header = optional(list(object({
            header_action_type = optional(string)
            header_name        = optional(string)
            value              = optional(string)
          })))
          response_header = optional(list(object({
            header_action_type = optional(string)
            header_name        = optional(string)
            value              = optional(string)
          })))
        }))
        match_condition = optional(list(object({
          negate_condition = optional(bool)
          operator         = string
          selector         = optional(string)
          transform        = optional(list(string))
          value            = optional(list(string))
          variable         = optional(string)
        })))
        name     = string
        priority = number
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.frontdoors) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.frontdoors : [for kk in keys(coalesce(v0.frontdoor_rules_engines, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
