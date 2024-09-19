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

#########################
##### Identity ##########
#########################

variable "compartments" {
  type = object({
    root = optional(map(object({
      tenancy_ocid          = optional(string)
      parent_compartment_id = string
      name                  = string
      description           = optional(string)
      enable_delete         = optional(bool)
      defined_tags          = optional(map(any))
      freeform_tags         = optional(map(any))
    })))
    compartment_level1 = optional(map(object({
      tenancy_ocid          = optional(string)
      parent_compartment_id = string
      name                  = string
      description           = optional(string)
      enable_delete         = optional(bool)
      defined_tags          = optional(map(any))
      freeform_tags         = optional(map(any))
    })))
    compartment_level2 = optional(map(object({
      tenancy_ocid          = optional(string)
      parent_compartment_id = string
      name                  = string
      description           = optional(string)
      enable_delete         = optional(bool)
      defined_tags          = optional(map(any))
      freeform_tags         = optional(map(any))
    })))
    compartment_level3 = optional(map(object({
      tenancy_ocid          = optional(string)
      parent_compartment_id = string
      name                  = string
      description           = optional(string)
      enable_delete         = optional(bool)
      defined_tags          = optional(map(any))
      freeform_tags         = optional(map(any))
    })))
    compartment_level4 = optional(map(object({
      tenancy_ocid          = optional(string)
      parent_compartment_id = string
      name                  = string
      description           = optional(string)
      enable_delete         = optional(bool)
      defined_tags          = optional(map(any))
      freeform_tags         = optional(map(any))
    })))
    compartment_level5 = optional(map(object({
      tenancy_ocid          = optional(string)
      parent_compartment_id = string
      name                  = string
      description           = optional(string)
      enable_delete         = optional(bool)
      defined_tags          = optional(map(any))
      freeform_tags         = optional(map(any))
    })))
  })
  default = {
    root               = {},
    compartment_level1 = {},
    compartment_level2 = {},
    compartment_level3 = {},
    compartment_level4 = {},
    compartment_level5 = {},
  }
}

variable "policies" {
  type = map(object({
    name                = string
    compartment_id      = string
    policy_description  = string
    policy_statements   = list(string)
    policy_version_date = optional(string)
    defined_tags        = optional(map(any))
    freeform_tags       = optional(map(any))
  }))
  default = {}
}

variable "groups" {
  type = map(object({
    group_name        = string
    group_description = string
	members           = optional(list(string), [])
    matching_rule     = optional(string)
    defined_tags      = optional(map(any))
    freeform_tags     = optional(map(any))
  }))
  default = {}
}

variable "identity_domain_groups" {
  type = map(object({
    group_name        = string
    group_description = string
    idcs_endpoint     = string
    domain_compartment_id    = string
    matching_rule     = optional(string)
    defined_tags      = optional(list(map(any)))
    freeform_tags     = optional(list(map(any)))
    members           = optional(list(string))
    user_can_request_access = optional(bool)
  }))
  default = {}
}


variable "users" {
  type = map(object({
    name                 = string
    description          = string
    email                = string
    enabled_capabilities = optional(list(string))
    group_membership     = optional(list(string))
    defined_tags         = optional(map(any))
    freeform_tags        = optional(map(any))
  }))
  default = {}
}

variable "identity_domain_users" {
  type = map(object({
    name = object({
      family_name = string
      given_name  = optional(string)
      middle_name = optional(string)
      honorific_prefix      = optional(string)
    })
    display_name         = optional(string)
    idcs_endpoint        = string
    user_name            = string
    domain_compartment_id    = string
    description          = optional(string)
    groups               = optional(list(string))
    email                = string
    recovery_email       = optional(string)
    home_phone_number    = optional(string)
    mobile_phone_number  = optional(string)
    enabled_capabilities = list(string)
    defined_tags      = optional(list(map(any)))
    freeform_tags     = optional(list(map(any)))
  }))

variable "networkSources" {
  type = map(object({
    name                = string
    description         = string
    public_source_list  = optional(list(string))
    defined_tags        = optional(map(any))
    freeform_tags       = optional(map(any))
    virtual_source_list = optional(list(map(list(string))))

  }))
  default = {}
}
