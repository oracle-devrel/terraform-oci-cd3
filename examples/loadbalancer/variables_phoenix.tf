# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
#
# Variables Block
# OCI
#
############################

variable "tenancy_ocid" {
  type    = string
  default = "<TENANCY OCID HERE>"
}

variable "user_ocid" {
  type    = string
  default = "<USER OCID HERE>"
}

variable "fingerprint" {
  type    = string
  default = "<SSH KEY FINGERPRINT HERE>"
}

variable "private_key_path" {
  type    = string
  default = "<SSH PRIVATE KEY FULL PATH HERE>"
}

variable "region" {
  type    = string
  default = "<OCI TENANCY REGION HERE eg: us-phoenix-1 or us-ashburn-1>"
}

#################################
#
# Variables according to Services
# PLEASE DO NOT MODIFY
#
#################################

##########################
## Fetch Compartments ####
##########################

variable "compartment_ocids" {
  type = map(any)
  default = {
    	#START_compartment_ocids#
	root = "ocid1.tenancy.oc1..aaaaaaaa5ob2e73i4bavdqrbrch25odbfbdbfbbcuxiies2dgpwdinmrmel3a"
	Security = "ocid1.compartment.oc1..aaaaaaaa5tx27cqohsryhdhdfdf6nubepnm6j3wsllkhxf4xsdfdf"
	AppDev = "ocid1.compartment.oc1..aaaaaaaa5tx27cqohsryhsddddfdf6nubepnm6j3wsllkhxf4xjl4hoa"
	#compartment_ocids_END#
  }
}

#########################
#### Load Balancers #####
#########################

variable "load_balancers" {
  description = "To provision Load Balancers"
  type = map(object({
    compartment_id         = string
    vcn_name               = string
    shape                  = string
    subnet_ids             = list(any)
    network_compartment_id = string
    display_name           = string
    shape_details          = optional(list(map(any)))
    nsg_ids                = optional(list(any))
    is_private             = optional(bool)
    ip_mode                = optional(string)
    defined_tags           = optional(map(any))
    freeform_tags          = optional(map(any))
    reserved_ips_id        = optional(string)
  }))
  default = {}
}

variable "hostnames" {
  description = "To provision Load Balancer Hostnames"
  type = map(object({
    load_balancer_id = string
    hostname         = string
    name             = string
  }))
  default = {}
}

variable "certificates" {
  description = "To provision Load Balancer Certificates"
  type = map(object({
    certificate_name   = string
    load_balancer_id   = string
    ca_certificate     = optional(string)
    passphrase         = optional(string)
    private_key        = optional(string)
    public_certificate = optional(string)
  }))
  default = {}
}

variable "cipher_suites" {
  description = "To provision Load Balancer Cipher Suites"
  type = map(object({
    ciphers          = list(string)
    name             = string
    load_balancer_id = optional(string)
  }))
  default = {}
}

variable "backend_sets" {
  description = "To provision Load Balancer Backend Sets"
  type = map(object({
    name                = string
    load_balancer_id    = string
    policy              = string
    protocol            = optional(string)
    interval_ms         = optional(string)
    is_force_plain_text = optional(string)
    port                = optional(string)
    response_body_regex = optional(string)
    retries             = optional(string)
    return_code         = optional(string)
    timeout_in_millis   = optional(string)
    url_path            = optional(string)
    lb_cookie_session = optional(list(object({
      cookie_name        = optional(string)
      disable_fallback   = optional(string)
      path               = optional(string)
      domain             = optional(string)
      is_http_only       = optional(string)
      is_secure          = optional(string)
      max_age_in_seconds = optional(string)
    })))
    session_persistence_configuration = optional(list(object({
      cookie_name      = optional(string)
      disable_fallback = optional(string)
    })))
    certificate_name  = optional(string)
    cipher_suite_name = optional(string)
    ssl_configuration = optional(list(object({
      certificate_ids                   = optional(list(any))
      server_order_preference           = optional(string)
      trusted_certificate_authority_ids = optional(list(any))
      verify_peer_certificate           = optional(string)
      verify_depth                      = optional(string)
      protocols                         = optional(list(any))
    })))
  }))
  default = {}
}

variable "backends" {
  description = "To provision Load Balancer Backends"
  type = map(object({
    backendset_name      = string
    ip_address           = string
    load_balancer_id     = string
    port                 = string
    instance_compartment = optional(string)
    backup               = optional(string)
    drain                = optional(string)
    offline              = optional(string)
    weight               = optional(string)
  }))
  default = {}
}

variable "listeners" {
  description = "To provision Load Balancer Listeners"
  type = map(object({
    name                     = string
    load_balancer_id         = string
    port                     = string
    protocol                 = string
    default_backend_set_name = string
    connection_configuration = optional(list(map(any)))
    hostname_names           = optional(list(any))
    path_route_set_name      = optional(string)
    rule_set_names           = optional(list(any))
    routing_policy_name      = optional(string)
    certificate_name         = optional(string)
    cipher_suite_name        = optional(string)
    ssl_configuration = optional(list(object({
      certificate_ids                   = optional(list(any))
      server_order_preference           = optional(string)
      trusted_certificate_authority_ids = optional(list(any))
      verify_peer_certificate           = optional(string)
      verify_depth                      = optional(string)
      protocols                         = optional(list(any))
    })))
  }))
  default = {}
}

variable "path_route_sets" {
  description = "To provision Load Balancer Path Route Sets"
  type = map(object({
    name             = string
    load_balancer_id = string
    path_routes      = optional(list(map(any)))
  }))
  default = {}
}

variable "rule_sets" {
  description = "To provision Load Balancer Rule Sets"
  type = map(object({
    name             = string
    load_balancer_id = string
    access_control_rules = optional(list(object({
      action          = string
      attribute_name  = optional(string)
      attribute_value = optional(string)
      description     = optional(string)
    })))
    access_control_method_rules = optional(list(object({
      action          = string
      allowed_methods = optional(list(any))
      status_code     = optional(string)
    })))
    http_header_rules = optional(list(object({
      action                         = string
      are_invalid_characters_allowed = optional(bool)
      http_large_header_size_in_kb   = optional(string)
    })))
    uri_redirect_rules = optional(list(object({
      action          = string
      attribute_name  = optional(string)
      attribute_value = optional(string)
      operator        = optional(string)
      host            = optional(string)
      path            = optional(string)
      port            = optional(string)
      protocol        = optional(string)
      query           = optional(string)
      response_code   = optional(string)
    })))
    request_response_header_rules = optional(list(object({
      action = string
      header = optional(string)
      prefix = optional(string)
      suffix = optional(string)
      value  = optional(string)
    })))
  }))
  default = {}
}

variable "lbr_reserved_ips" {
  description = "To provision Load Balancer Reserved IPs"
  type = map(object({
    compartment_id    = string
    display_name      = string
    lifetime          = string
    private_ip_id     = optional(string)
    public_ip_pool_id = optional(string)
    defined_tags      = optional(map(any))
    freeform_tags     = optional(map(any))
  }))
  default = {}
}

variable "lb_routing_policies" {
  description = "To provision Load Balancer Routing Policies"
  type = map(object({
    name                       = string
    load_balancer_id           = string
    condition_language_version = optional(string)
    rules                      = optional(list(map(any)))
  }))
  default = {}
}

###################################
####### Load Balancer Logs ########
###################################

variable "loadbalancer_log_groups" {
  description = "To provision Log Groups for Load Balancers"
  type = map(object({
    compartment_id = string
    display_name   = string
    description    = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}

variable "loadbalancer_logs" {
  description = "To provision Logs for Load Balancers"
  type = map(object({
    display_name       = string
    log_group_id       = string
    log_type           = string
    compartment_id     = optional(string)
    category           = optional(string)
    resource           = optional(string)
    service            = optional(string)
    source_type        = optional(string)
    is_enabled         = optional(bool)
    retention_duration = optional(number)
    defined_tags       = optional(map(any))
    freeform_tags      = optional(map(any))
  }))
  default = {}
}

#########################
## Network Load Balancers ##
#########################

variable "network_load_balancers" {
  type = map(object({
    display_name                   = string
    compartment_id                 = string
    network_compartment_id         = string
    vcn_name                       = string
    subnet_id                      = string
    is_private                     = optional(bool)
    reserved_ips_id                = string
    is_preserve_source_destination = optional(bool)
    is_symmetric_hash_enabled      = optional(bool)
    nlb_ip_version                 = optional(string)
    assigned_private_ipv4          = optional(string)
    nsg_ids                        = optional(list(string))
    defined_tags                   = optional(map(any))
    freeform_tags                  = optional(map(any))
  }))
  default = {}
}
variable "nlb_listeners" {
  type = map(object({
    name                     = string
    network_load_balancer_id = string
    default_backend_set_name = string
    port                     = number
    protocol                 = string
    ip_version               = optional(string)
  }))
  default = {}
}

variable "nlb_backend_sets" {
  type = map(object({
    name                     = string
    network_load_balancer_id = string
    policy                   = string
    protocol                 = string
    domain_name              = optional(string)
    query_class              = optional(string)
    query_type               = optional(string)
    rcodes                   = optional(list(string))
    transport_protocol       = optional(string)
    return_code              = optional(number)
    interval_in_millis       = optional(number)
    port                     = optional(number)
    request_data             = optional(string)
    response_body_regex      = optional(string)
    response_data            = optional(string)
    retries                  = optional(number)
    timeout_in_millis        = optional(number)
    url_path                 = optional(string)
    is_preserve_source       = optional(bool)
    ip_version               = optional(string)
  }))
  default = {}
}
variable "nlb_backends" {
  type = map(object({
    name                     = optional(string)
    backend_set_name         = string
    network_load_balancer_id = string
    port                     = number
    ip_address               = string
    instance_compartment     = string
    is_drain                 = optional(bool)
    is_backup                = optional(bool)
    is_offline               = optional(bool)
    weight                   = optional(number)
    target_id                = optional(string)
  }))
  default = {}
}
variable "nlb_reserved_ips" {
  description = "To provision Network Load Balancer Reserved IPs"
  type = map(object({
    compartment_id    = string
    lifetime          = string
    defined_tags      = optional(map(any))
    freeform_tags     = optional(map(any))
    display_name      = optional(string)
    private_ip_id     = optional(string)
    public_ip_pool_id = optional(string)
  }))
  default = {}
}
