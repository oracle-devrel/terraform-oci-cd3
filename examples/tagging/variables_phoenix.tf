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

#########################
####### Governance #########
#########################

variable "tag_namespaces" {
  description = "To provision Namespaces"
  type = map(object({
    compartment_id = string
    description    = string
    name           = string
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
    is_retired     = optional(bool)
  }))
  default = {}
}

variable "tag_keys" {
  description = "To provision Tag Keys"
  type = map(object({
    tag_namespace_id = string
    description      = string
    name             = string
    defined_tags     = optional(map(any))
    freeform_tags    = optional(map(any))
    is_cost_tracking = optional(bool)
    is_retired       = optional(bool)
    validator = optional(list(object({
      validator_type   = optional(string)
      validator_values = optional(list(any))
    })))
  }))
  default = {}
}

variable "tag_defaults" {
  description = "To make the Tag keys as default to compartments"
  type = map(object({
    compartment_id    = string
    tag_definition_id = string
    value             = string
    is_required       = optional(bool)
  }))
  default = {}
}
