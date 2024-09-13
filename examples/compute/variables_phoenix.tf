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
	Network = "ocid1.compartment.oc1..aaaaaaaa5tx27cqohsryhdhdfdf6nubepnm6j3wsllkhxf4xjl4hoa"
	#compartment_ocids_END#
  }
}
#################################
# SSH Keys
#################################

variable "instance_ssh_keys" {
  type = map(any)
  default = {
    ssh_public_key = ""
    # Use '\n' as the delimiter to add multiple ssh keys.
    # Example: ssh_public_key = "ssh-rsa AAXXX......yhdlo\nssh-rsa AAxxskj...edfwf"
    #START_instance_ssh_keys#
    # exported instance ssh keys
    #instance_ssh_keys_END#
  }
}


#################################
# Platform Image OCIDs and
# Market Place Images
#################################

variable "instance_source_ocids" {
  type = map(any)
  default = {
    Linux    = "ocid1.image.oc1.phx.aaaaaaaapubemfdyxzh3uhdw2io523f2rhyxnh5t7vqnrqe3f333lspmwp4q"
    Windows  = "ocid1.image.oc1.phx.aaaaaaaa4eyds5o2ogoigns7pk2a74s56bhfspibii6nyoo7tsinbk7hkt3q"
    PaloAlto = "Palo Alto Networks VM-Series Next Generation Firewall"
    #START_instance_source_ocids#
    # exported instance image ocids
    #instance_source_ocids_END#
  }
}

variable "blockvolume_source_ocids" {
  type = map(any)
  default = {
    block1 = "<Source OCID here>"
    #blockvolume_source_ocid    = "<VOLUME SOURCE OCID HERE>"
    #START_blockvolume_source_ocids#
    # exported block volume source ocids
    #blockvolume_source_ocids_END#
  }
}

#########################
## Instances/Block Volumes ##
#########################

variable "blockvolumes" {
  description = "To provision block volumes"
  type = map(object({
    availability_domain                 = string
    compartment_id                      = string
    display_name                        = string
    size_in_gbs                         = optional(string)
    is_auto_tune_enabled                = optional(string)
    vpus_per_gb                         = optional(string)
    kms_key_id                          = optional(string)
    attach_to_instance                  = optional(string)
    attachment_type                     = optional(string)
    backup_policy                       = optional(string)
    policy_compartment_id               = optional(string)
    device                              = optional(string)
    encryption_in_transit_type          = optional(string)
    attachment_display_name             = optional(string)
    is_read_only                        = optional(bool)
    is_pv_encryption_in_transit_enabled = optional(bool)
    is_shareable                        = optional(bool)
    use_chap                            = optional(bool)
    is_agent_auto_iscsi_login_enabled   = optional(bool)
    defined_tags                        = optional(map(any))
    freeform_tags                       = optional(map(any))
    source_details                      = optional(list(map(any)))
    block_volume_replicas               = optional(list(map(any)))
    block_volume_replicas_deletion      = optional(bool)
    autotune_policies                   = optional(list(map(any)))
  }))
  default = {}
}

variable "block_backup_policies" {
  type        = map(any)
  description = "To create block volume back policy"
  default     = {}
}

variable "instances" {
  description = "Map of instances to be provisioned"
  type = map(object({
    availability_domain                        = string
    compartment_id                             = string
    shape                                      = string
    source_id                                  = string
    source_type                                = string
    vcn_name                                   = string
    subnet_id                                  = string
    network_compartment_id                     = string
    display_name                               = optional(string)
    assign_public_ip                           = optional(bool)
    boot_volume_size_in_gbs                    = optional(string)
    fault_domain                               = optional(string)
    dedicated_vm_host_id                       = optional(string)
    private_ip                                 = optional(string)
    hostname_label                             = optional(string)
    nsg_ids                                    = optional(list(string))
    ocpus                                      = optional(string)
    memory_in_gbs                              = optional(number)
    capacity_reservation_id                    = optional(string)
    create_is_pv_encryption_in_transit_enabled = optional(bool)
    remote_execute                             = optional(string)
    bastion_ip                                 = optional(string)
    cloud_init_script                          = optional(string)
    ssh_authorized_keys                        = optional(string)
    backup_policy                              = optional(string)
    policy_compartment_id                      = optional(string)
    network_type                               = optional(string)
    #extended_metadata                          = optional(string)
    skip_source_dest_check    = optional(bool)
    baseline_ocpu_utilization = optional(string)
    #preemptible_instance_config                = optional(string)
    all_plugins_disabled                = optional(bool)
    is_management_disabled              = optional(bool)
    is_monitoring_disabled              = optional(bool)
    assign_private_dns_record           = optional(string)
    plugins_details                     = optional(map(any))
    is_live_migration_preferred         = optional(bool)
    recovery_action                     = optional(string)
    are_legacy_imds_endpoints_disabled  = optional(bool)
    boot_volume_type                    = optional(string)
    firmware                            = optional(string)
    is_consistent_volume_naming_enabled = optional(bool)
    remote_data_volume_type             = optional(string)
    platform_config                     = optional(list(map(any)))
    launch_options                      = optional(list(map(any)))
    ipxe_script                         = optional(string)
    preserve_boot_volume                = optional(bool)
    vlan_id                             = optional(string)
    kms_key_id                          = optional(string)
    vnic_display_name                   = optional(string)
    vnic_defined_tags                   = optional(map(any))
    vnic_freeform_tags                  = optional(map(any))
    defined_tags                        = optional(map(any))
    freeform_tags                       = optional(map(any))
  }))
  default = {}
}

variable "boot_backup_policies" {
  type        = map(any)
  description = "Map of boot volume backup policies to be provisioned"
  default     = {}
}
