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

####################
####### DNS  #######
####################

variable "zones" {
  type = map(object({
    compartment_id      = string
    display_name        = string
    view_compartment_id = optional(string)
    view_id             = optional(string)
    zone_type           = optional(string)
    scope               = optional(string)
    freeform_tags       = optional(map(any))
    defined_tags        = optional(map(any))
  }))
  default = {}
}

variable "views" {
  type = map(object({
    compartment_id = string
    display_name   = string
    scope          = optional(string)
    freeform_tags  = optional(map(any))
    defined_tags   = optional(map(any))
  }))
  default = {}
}

variable "rrsets" {
  type = map(object({
    compartment_id      = optional(string)
    view_compartment_id = optional(string)
    view_id             = optional(string)
    zone_id             = string
    domain              = string
    rtype               = string
    ttl                 = number
    rdata               = optional(list(string))
    scope               = optional(string)
  }))
  default = {}
}

variable "resolvers" {
  type = map(object({
    network_compartment_id = string
    vcn_name               = string
    display_name           = optional(string)
    views = optional(map(object({
      view_id             = optional(string)
      view_compartment_id = optional(string)
    })))
    resolver_rules = optional(map(object({
      client_address_conditions = optional(list(any))
      destination_addresses     = optional(list(any))
      qname_cover_conditions    = optional(list(any))
      source_endpoint_name      = optional(string)
    })))
    endpoint_names = optional(map(object({
      is_forwarding      = optional(bool)
      is_listening       = optional(bool)
      name               = optional(string)
      subnet_name        = optional(string)
      forwarding_address = optional(string)
      listening_address  = optional(string)
      nsg_ids            = optional(list(string))
    })))
    freeform_tags = optional(map(any))
    defined_tags  = optional(map(any))
  }))
  default = {}
}
