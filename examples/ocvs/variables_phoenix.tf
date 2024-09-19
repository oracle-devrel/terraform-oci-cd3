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
##################################
############## SDDCs #############
##################################
variable "sddcs" {
  type = map(object({
    compartment_id                        = string
    availability_domain                   = string
    network_compartment_id                = string
    vcn_name                              = string
    esxi_hosts_count                      = number
    nsx_edge_uplink1vlan_id               = string
    nsx_edge_uplink2vlan_id               = string
    nsx_edge_vtep_vlan_id                 = string
    nsx_vtep_vlan_id                      = string
    provisioning_subnet_id                = string
    ssh_authorized_keys                   = string
    vmotion_vlan_id                       = string
    vmware_software_version               = string
    vsan_vlan_id                          = string
    vsphere_vlan_id                       = string
    capacity_reservation_id               = optional(string)
    defined_tags                          = optional(map(any))
    display_name                          = optional(string)
    initial_cluster_display_name          = optional(string)
    freeform_tags                         = optional(map(any))
    hcx_action                            = optional(string)
    hcx_vlan_id                           = optional(string)
    initial_host_ocpu_count               = optional(number)
    initial_host_shape_name               = optional(string)
    initial_commitment                    = optional(string)
    instance_display_name_prefix          = optional(string)
    is_hcx_enabled                        = optional(bool)
    is_shielded_instance_enabled          = optional(bool)
    is_single_host_sddc                   = optional(bool)
    provisioning_vlan_id                  = optional(string)
    refresh_hcx_license_status            = optional(bool)
    replication_vlan_id                   = optional(string)
    reserving_hcx_on_premise_license_keys = optional(string)
    workload_network_cidr                 = optional(string)
    management_datastore                  = optional(list(string))
    workload_datastore                    = optional(list(string))

  }))
  default = {}

}

variable "sddc-clusters" {
  type = map(object({
    compartment_id                        = string
    availability_domain                   = string
    network_compartment_id                = string
    vcn_name                              = string
    esxi_hosts_count                      = number
    nsx_edge_uplink1vlan_id               = string
    nsx_edge_uplink2vlan_id               = optional(string)
    nsx_edge_vtep_vlan_id                 = string
    nsx_vtep_vlan_id                      = string
    provisioning_subnet_id                = string
    ssh_authorized_keys                   = optional(string)
    vmotion_vlan_id                       = string
    vmware_software_version               = string
    vsan_vlan_id                          = string
    vsphere_vlan_id                       = string
    capacity_reservation_id               = optional(string)
    defined_tags                          = optional(map(any))
    display_name                          = optional(string)
    freeform_tags                         = optional(map(any))
    hcx_action                            = optional(string)
    hcx_vlan_id                           = optional(string)
    initial_host_ocpu_count               = optional(number)
    initial_host_shape_name               = optional(string)
    initial_commitment                    = optional(string)
    instance_display_name_prefix          = optional(string)
    is_hcx_enabled                        = optional(bool)
    is_shielded_instance_enabled          = optional(bool)
    is_single_host_sddc                   = optional(bool)
    provisioning_vlan_id                  = optional(string)
    refresh_hcx_license_status            = optional(bool)
    replication_vlan_id                   = optional(string)
    reserving_hcx_on_premise_license_keys = optional(string)
    workload_network_cidr                 = optional(string)
    workload_datastore                    = optional(list(string))
    sddc_id                               = optional(string)
    esxi_software_version                 = optional(string)

  }))
  default = {}

}
