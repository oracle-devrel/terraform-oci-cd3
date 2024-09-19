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

###################################
# Platform Image OCIDs, Source OCIDS 
# and Market Place Images
###################################
variable "fss_source_ocids" {
  type = map(any)
  default = {
    snapshot1 = "<Source Snapshot OCID here>"
    #fss_source_snapshot_ocid    = "<SOURCE SNAPSHOT OCID HERE>"
    #START_fss_source_snapshot_ocids#
    # exported fss source snapshot ocids
    #fss_source_snapshot_ocids_END#
  }
}
#########################
######### FSS ###########
#########################

variable "mount_targets" {
  description = "To provision Mount Targets"
  type = map(object({
    availability_domain    = string
    compartment_id         = string
    network_compartment_id = string
    vcn_name               = string
    subnet_id              = string
    display_name           = optional(string)
    ip_address             = optional(string)
    hostname_label         = optional(string)
    nsg_ids                = optional(list(any))
    defined_tags           = optional(map(any))
    freeform_tags          = optional(map(any))
  }))
  default = {}
}

variable "fss" {
  description = "To provision File System Services"
  type = map(object({
    availability_domain   = string
    compartment_id        = string
    display_name          = optional(string)
    source_snapshot       = optional(string)
    snapshot_policy       = optional(string)
    policy_compartment_id = optional(string)
    kms_key_id            = optional(string)
    defined_tags          = optional(map(any))
    freeform_tags         = optional(map(any))
  }))
  default = {}
}

variable "nfs_export_options" {
  description = "To provision Export Sets"
  type = map(object({
    export_set_id                = string
    file_system_id               = string
    path                         = string
    export_options               = optional(list(any))
    defined_tags                 = optional(map(any))
    freeform_tags                = optional(map(any))
    is_idmap_groups_for_sys_auth = optional(bool)
  }))
  default = {}
}

variable "fss_replication" {
  description = "To provision File System Replication"
  type = map(object({
    compartment_id       = string
    source_id            = string
    target_id            = string
    display_name         = optional(string)
    replication_interval = optional(number)
    defined_tags         = optional(map(any))
    freeform_tags        = optional(map(any))
  }))
  default = {}
}

#########################
####### FSS Logs ########
#########################

variable "nfs_log_groups" {
  description = "To provision Log Groups for Mount Target"
  type = map(object({
    compartment_id = string
    display_name   = string
    description    = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}

variable "nfs_logs" {
  description = "To provision Logs for Mount Target"
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

