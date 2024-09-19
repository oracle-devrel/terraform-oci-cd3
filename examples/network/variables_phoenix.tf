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

###### Network ##########
#########################
#########################

variable "default_dhcps" {
  type = map(object({
    server_type                = string
    manage_default_resource_id = optional(string)
    custom_dns_servers         = optional(list(any))
    search_domain              = optional(map(list(any)))
    defined_tags               = optional(map(any))
    freeform_tags              = optional(map(any))
  }))
  default = {}
}

variable "custom_dhcps" {
  type = map(object({
    compartment_id     = string
    server_type        = string
    vcn_id             = string
    custom_dns_servers = optional(list(any))
    domain_name_type   = optional(string)
    display_name       = optional(string)
    search_domain      = optional(map(list(any)))
    defined_tags       = optional(map(any))
    freeform_tags      = optional(map(any))
  }))
  default = {}
}

variable "vcns" {
  type = map(object({
    compartment_id                   = string
    cidr_blocks                      = optional(list(string))
    byoipv6cidr_details              = optional(list(map(any)))
    display_name                     = optional(string)
    dns_label                        = optional(string)
    is_ipv6enabled                   = optional(bool)
    defined_tags                     = optional(map(any))
    freeform_tags                    = optional(map(any))
    ipv6private_cidr_blocks          = optional(list(string))
    is_oracle_gua_allocation_enabled = optional(bool)
  }))
  default = {}
}

variable "igws" {
  type = map(object({
    compartment_id = string
    vcn_id         = string
    enable_igw     = optional(bool)
    igw_name       = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
    route_table_id = optional(string)
  }))
  default = {}
}

variable "sgws" {
  type = map(object({
    compartment_id = string
    vcn_id         = string
    service        = optional(string)
    sgw_name       = optional(string)
    route_table_id = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}

variable "ngws" {
  type = map(object({
    compartment_id = string
    vcn_id         = string
    block_traffic  = optional(bool)
    public_ip_id   = optional(string)
    ngw_name       = optional(string)
    route_table_id = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}

variable "lpgs" {
  type = map(any)
  default = {
    hub-lpgs      = {},
    spoke-lpgs    = {},
    peer-lpgs     = {},
    none-lpgs     = {},
    exported-lpgs = {},
  }
}

variable "drgs" {
  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}

variable "seclists" {
  type = map(object({
    compartment_id = string
    vcn_id         = string
    display_name   = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
    ingress_sec_rules = optional(list(object({
      protocol    = optional(string)
      stateless   = optional(string)
      description = optional(string)
      source      = optional(string)
      source_type = optional(string)
      options     = optional(map(any))
    })))
    egress_sec_rules = optional(list(object({
      protocol         = optional(string)
      stateless        = optional(string)
      description      = optional(string)
      destination      = optional(string)
      destination_type = optional(string)
      options          = optional(map(any))
    })))
  }))
  default = {}
}

variable "default_seclists" {
  type = map(object({
    compartment_id = string
    vcn_id         = string
    display_name   = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
    ingress_sec_rules = optional(list(object({
      protocol    = optional(string)
      stateless   = optional(string)
      description = optional(string)
      source      = optional(string)
      source_type = optional(string)
      options     = optional(map(any))
    })))
    egress_sec_rules = optional(list(object({
      protocol         = optional(string)
      stateless        = optional(string)
      description      = optional(string)
      destination      = optional(string)
      destination_type = optional(string)
      options          = optional(map(any))
    })))
  }))
  default = {}
}

variable "route_tables" {
  type = map(object({
    compartment_id      = string
    vcn_id              = string
    display_name        = optional(string)
    defined_tags        = optional(map(any))
    freeform_tags       = optional(map(any))
    route_rules_igw     = list(map(any))
    route_rules_ngw     = list(map(any))
    route_rules_sgw     = list(map(any))
    route_rules_drg     = list(map(any))
    route_rules_lpg     = list(map(any))
    route_rules_ip      = list(map(any))
    gateway_route_table = optional(bool)
    default_route_table = optional(bool)

  }))
  default = {}
}

variable "default_route_tables" {
  type = map(object({
    compartment_id      = string
    vcn_id              = string
    display_name        = optional(string)
    defined_tags        = optional(map(any))
    freeform_tags       = optional(map(any))
    route_rules_igw     = list(map(any))
    route_rules_ngw     = list(map(any))
    route_rules_sgw     = list(map(any))
    route_rules_drg     = list(map(any))
    route_rules_lpg     = list(map(any))
    route_rules_ip      = list(map(any))
    gateway_route_table = optional(bool)
    default_route_table = optional(bool)
  }))
  default = {}
}

variable "nsgs" {
  type = map(object({
    compartment_id         = string
    network_compartment_id = string
    vcn_name               = string
    display_name           = optional(string)
    defined_tags           = optional(map(any))
    freeform_tags          = optional(map(any))
  }))
  default = {}
}

variable "nsg_rules" {
  type = map(object({
    nsg_id           = string
    direction        = string
    protocol         = string
    description      = optional(string)
    stateless        = optional(string)
    source_type      = optional(string)
    destination_type = optional(string)
    destination      = optional(string)
    source           = optional(string)
    options          = optional(map(any))
  }))
  default = {}
}

variable "subnets" {
  type = map(object({
    compartment_id             = string
    vcn_id                     = string
    cidr_block                 = string
    display_name               = optional(string)
    dns_label                  = optional(string)
    ipv6cidr_block             = optional(string)
    defined_tags               = optional(map(any))
    freeform_tags              = optional(map(any))
    prohibit_internet_ingress  = optional(string)
    prohibit_public_ip_on_vnic = optional(string)
    availability_domain        = optional(string)
    dhcp_options_id            = optional(string)
    route_table_id             = optional(string)
    security_list_ids          = optional(list(string))
  }))
  default = {}
}

variable "vlans" {
  type = map(object({
    cidr_block             = string
    compartment_id         = string
    network_compartment_id = string
    vcn_name               = string
    display_name           = optional(string)
    nsg_ids                = optional(list(string))
    route_table_name       = optional(string)
    vlan_tag               = optional(string)
    availability_domain    = optional(string)
    freeform_tags          = optional(map(any))
    defined_tags           = optional(map(any))
  }))
  default = {}
}

variable "drg_attachments" {
  type    = map(any)
  default = {}
}

variable "drg_other_attachments" {
  type    = map(any)
  default = {}
}

variable "drg_route_tables" {
  type = map(object({
    drg_id                           = string
    display_name                     = optional(string)
    defined_tags                     = optional(map(any))
    freeform_tags                    = optional(map(any))
    is_ecmp_enabled                  = optional(bool)
    import_drg_route_distribution_id = optional(string)
  }))
  default = {}
}

variable "drg_route_rules" {
  type    = map(any)
  default = {}
}

variable "drg_route_distributions" {
  type = map(object({
    distribution_type = string
    drg_id            = string
    defined_tags      = optional(map(any))
    freeform_tags     = optional(map(any))
    display_name      = optional(string)
  }))
  default = {}
}

variable "drg_route_distribution_statements" {
  type = map(object({
    drg_route_distribution_id = string
    action                    = string
    match_criteria = optional(list(object({
      match_type        = string
      attachment_type   = optional(string)
      drg_attachment_id = optional(string)
    })))
    priority = optional(string)
  }))
  default = {}
}

variable "data_drg_route_tables" {
  type    = map(any)
  default = {}
}

variable "data_drg_route_table_distributions" {
  type    = map(any)
  default = {}
}
