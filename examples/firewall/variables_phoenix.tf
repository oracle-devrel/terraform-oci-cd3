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
	CD3Demo = "ocid1.compartment.oc1..aaaaaaaa5tx27cqohsryhdhdfdf6nubepnm6j3wsllkhxf4xjl4hoa"
	#compartment_ocids_END#
  }
}
#####################################
####### Firewall as a Service #######
#####################################
variable "firewalls" {
  type = map(object({
    compartment_id             = string
    network_compartment_id     = string
    network_firewall_policy_id = string
    subnet_id                  = string
    vcn_name                   = string
    display_name               = string
    ipv4address                = optional(string)
    nsg_id                     = optional(list(string))
    ipv6address                = optional(string)
    availability_domain        = optional(string)
    defined_tags               = optional(map(any))
    freeform_tags              = optional(map(any))
  }))
  default = {}
}

variable "fw-policies" {
  type = map(object({
    compartment_id = optional(string)
    display_name   = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}
variable "services" {
  type = map(object({
    service_name               = string
    service_type               = string
    network_firewall_policy_id = string
    port_ranges = list(object({
      minimum_port = string
      maximum_port = optional(string)
    }))
  }))
  default = {}
}
variable "url_lists" {
  type = map(object({
    urllist_name               = string
    network_firewall_policy_id = string
    urls = list(object({
      pattern = string
      type    = string
    }))
  }))
  default = {}
}
variable "service_lists" {
  type = map(object({
    service_list_name          = string
    network_firewall_policy_id = string
    services                   = list(string)
  }))
  default = {}
}

variable "address_lists" {
  type = map(object({
    address_list_name          = string
    network_firewall_policy_id = string
    address_type               = string
    addresses                  = list(string)
  }))
  default = {}
}

variable "applications" {
  type = map(object({
    app_list_name              = string
    network_firewall_policy_id = string
    app_type                   = string
    icmp_type                  = number
    icmp_code                  = optional(number)
  }))
  default = {}
}

variable "application_groups" {
  type = map(object({
    app_group_name             = string
    network_firewall_policy_id = string
    apps                       = list(string)

  }))
  default = {}
}

variable "security_rules" {
  type = map(object({
    action                     = string
    rule_name                  = string
    network_firewall_policy_id = string
    condition = optional(list(object({
      application         = optional(list(string))
      destination_address = optional(list(string))
      service             = optional(list(string))
      source_address      = optional(list(string))
      url                 = optional(list(string))
    })))
    inspection  = optional(string)
    after_rule  = optional(string)
    before_rule = optional(string)

  }))
  default = {}
}

variable "secrets" {
  type = map(object({
    secret_name                = string
    network_firewall_policy_id = string
    secret_source              = string
    secret_type                = string
    vault_secret_id            = string
    version_number             = number
    vault_name                 = string
    vault_compartment_id       = string
  }))
  default = {}
}

variable "decryption_profiles" {
  type = map(object({
    profile_name                          = string
    profile_type                          = string
    network_firewall_policy_id            = string
    are_certificate_extensions_restricted = optional(bool)
    is_auto_include_alt_name              = optional(bool)
    is_expired_certificate_blocked        = optional(bool)
    is_out_of_capacity_blocked            = optional(bool)
    is_revocation_status_timeout_blocked  = optional(bool)
    is_unknown_revocation_status_blocked  = optional(bool)
    is_unsupported_cipher_blocked         = optional(bool)
    is_unsupported_version_blocked        = optional(bool)
    is_untrusted_issuer_blocked           = optional(bool)
  }))
  default = {}
}

variable "decryption_rules" {
  type = map(object({
    action                     = string
    rule_name                  = string
    network_firewall_policy_id = string
    condition = optional(list(object({

      destination_address = optional(list(string))

      source_address = optional(list(string))

    })))
    decryption_profile = optional(string)
    secret             = optional(string)
    after_rule         = optional(string)
    before_rule        = optional(string)

  }))
  default = {}
}

#########################
####### Firewall Logs ########
#########################

variable "fw_log_groups" {
  description = "To provision Log Groups for Network Firewall"
  type = map(object({
    compartment_id = string
    display_name   = string
    description    = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}

variable "fw_logs" {
  description = "To provision Logs for Network Firewall"
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
