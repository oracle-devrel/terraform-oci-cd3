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
	compartment1 = "ocid1.compartment.oc1..aaaaaaaa5tx27cqohsryhdhdfdf6nubepnm6j3wsllkhxf4xjl4hoa"
	#compartment_ocids_END#
  }
}
###########################
######### Budgets #########
###########################

variable "budgets" {
  type = map(object({
    amount                                = string
    compartment_id                        = string
    reset_period                          = string
    budget_processing_period_start_offset = optional(string)
    defined_tags                          = optional(map(any))
    description                           = optional(string)
    display_name                          = optional(string)
    freeform_tags                         = optional(map(any))
    processing_period_type                = optional(string)
    budget_end_date                       = optional(string)
    budget_start_date                     = optional(string)
    target_type                           = optional(string)
    targets                               = optional(list(any))
  }))
  default = {}
}

variable "budget_alert_rules" {
  type = map(object({
    budget_id      = string
    threshold      = string
    threshold_type = string
    type           = string
    defined_tags   = optional(map(any))
    description    = optional(string)
    display_name   = optional(string)
    freeform_tags  = optional(map(any))
    message        = optional(string)
    recipients     = optional(string)
  }))
  default = {}
}
