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

#################################
# SSH Keys
#################################
variable "oke_ssh_keys" {
  type = map(any)
  default = {
    ssh_public_key = "<SSH PUB KEY STRING HERE>"
    # Use '\n' as the delimiter to add multiple ssh keys.
    # Example: ssh_public_key = "ssh-rsa AAXXX......yhdlo\nssh-rsa AAxxskj...edfwf"
    #START_oke_ssh_keys#
    #oke_ssh_keys_END#
  }
}

###################################
# Platform Image OCIDs, Source OCIDS
# and Market Place Images
###################################
variable "oke_source_ocids" {
  type = map(any)
  default = {
    Linux = "<OKE LINUX OCID HERE>"
    #START_oke_source_ocids#
    # exported oke image ocids
    #oke_source_ocids_END#
  }
}
#########################
## Developer Services ##
#########################

## OKE

variable "clusters" {
  type = map(object({
    display_name                    = string
    compartment_id                  = string
    network_compartment_id          = string
    vcn_name                        = string
    kubernetes_version              = string
    cni_type                        = string
    cluster_type                    = string
    is_policy_enabled               = optional(bool)
    policy_kms_key_id               = optional(string)
    is_kubernetes_dashboard_enabled = optional(bool)
    is_tiller_enabled               = optional(bool)
    is_public_ip_enabled            = optional(bool)
    nsg_ids                         = optional(list(string))
    endpoint_subnet_id              = string
    is_pod_security_policy_enabled  = optional(bool)
    pods_cidr                       = optional(string)
    services_cidr                   = optional(string)
    service_lb_subnet_ids           = optional(list(string))
    cluster_kms_key_id              = optional(string)
    defined_tags                    = optional(map(any))
    freeform_tags                   = optional(map(any))
    lb_defined_tags                 = optional(map(any))
    lb_freeform_tags                = optional(map(any))
    volume_defined_tags             = optional(map(any))
    volume_freeform_tags            = optional(map(any))
  }))
  default = {}
}

variable "nodepools" {
  type = map(object({
    display_name                        = string
    cluster_name                        = string
    compartment_id                      = string
    network_compartment_id              = string
    vcn_name                            = string
    node_shape                          = string
    initial_node_labels                 = optional(map(any))
    kubernetes_version                  = string
    is_pv_encryption_in_transit_enabled = optional(bool)
    availability_domain                 = number
    fault_domains                       = optional(list(string))
    subnet_id                           = string
    size                                = number
    cni_type                            = string
    max_pods_per_node                   = optional(number)
    pod_nsg_ids                         = optional(list(string))
    pod_subnet_ids                      = optional(string)
    worker_nsg_ids                      = optional(list(string))
    memory_in_gbs                       = optional(number)
    ocpus                               = optional(number)
    image_id                            = string
    source_type                         = string
    boot_volume_size_in_gbs             = optional(number)
    ssh_public_key                      = optional(string)
    nodepool_kms_key_id                 = optional(string)
    node_defined_tags                   = optional(map(any))
    node_freeform_tags                  = optional(map(any))
    nodepool_defined_tags               = optional(map(any))
    nodepool_freeform_tags              = optional(map(any))
  }))
  default = {}
}

variable "virtual-nodepools" {
  type = map(object({
    display_name                = string
    cluster_name                = string
    compartment_id              = string
    network_compartment_id      = string
    vcn_name                    = string
    node_shape                  = string
    initial_virtual_node_labels = optional(map(any))
    availability_domain         = number
    fault_domains               = list(string)
    subnet_id                   = string
    size                        = number
    pod_nsg_ids                 = optional(list(string))
    pod_subnet_id               = string
    worker_nsg_ids              = optional(list(string))
    taints                      = optional(list(any))
    node_defined_tags           = optional(map(any))
    node_freeform_tags          = optional(map(any))
    nodepool_defined_tags       = optional(map(any))
    nodepool_freeform_tags      = optional(map(any))
  }))
  default = {}
}

