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

############################
## KMS (Keys/Vauts) ##
############################

variable "vaults" {
  type = map(object({
    compartment_id = string
    display_name   = string
    vault_type     = string
    freeform_tags  = optional(map(any))
    defined_tags   = optional(map(any))
    replica_region = optional(string)
  }))
  default = {}
}

variable "keys" {
  type = map(object({
    compartment_id            = string
    display_name              = string
    vault_name                = string
    algorithm                 = optional(string)
    length                    = optional(string)
    curve_id                  = optional(string)
    protection_mode           = optional(string)
    freeform_tags             = optional(map(any))
    defined_tags              = optional(map(any))
    is_auto_rotation_enabled  = optional(bool)
    rotation_interval_in_days = optional(string)

  }))
  default = {}
}

