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
## NSGs and NSG Rules ##
#########################
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
