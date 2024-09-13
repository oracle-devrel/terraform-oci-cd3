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

#################################
# SSH Keys
#################################
variable "exacs_ssh_keys" {
  type = map(any)
  default = {
    ssh_public_key = [""]
    # Use ',' as the delimiter to add multiple ssh keys.
    # Example: ssh_public_key = ["ssh-rsa AAXXX......yhdlo","ssh-rsa AAxxskj...edfwf"]
    #START_exacs_ssh_keys#
	#exacs_ssh_keys_END#
  }
}

variable "dbsystem_ssh_keys" {
  type = map(any)
  default = {
    ssh_public_key = [""]
    # Use ',' as the delimiter to add multiple ssh keys.
    # Example: ssh_public_key = ["ssh-rsa AAXXX......yhdlo","ssh-rsa AAxxskj...edfwf"]
    #START_dbsystem_ssh_keys#
	DBSYSSERESEERE_otfdsferess = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+Q4fHpGrrHADfXXiHfGGXFToDYjMotCtE8PyjQjMQTEmRExH2jsEXtODp2pb8imdcdp5pPmBadsHV7av3vFRg7yvjuUY7IyZ9t5WO+0dI4xOCGZIzlO6AODN6ihLezFJUZWyc0NaQ/faBxox/nhjngCRIOpSazJyJ/Gstm44EzjTed5u9DuM9MntNsROe+kiRcSOxRDyfFjkq+nLWPqaavCA0cEJNW+a+WdAzlYxMhZiDD6KqsxIpJP1kdFOB+/Oh4OeZZet87DzmDeTx/gqH8fMgebAEKUBk3/VYJHqCP3k99KdqmfbL2Lq20eH3N4f/Xl3FueZLLSy2Ljy0np2n ssh-key-2024-07-17"]
	DBSystem-202407171943_demoaeraeaf = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+Q4fHpGrrHADfXXiHfGGXFToDYjMotCtE8PyjQjMQTEmRExH2jsEXtODp2pb8imdcdp5pPmBadsHV7av3vFRg7yvjuUY7IyZ9t5WO+0dI4xOCGZIzlO6AODN6ihLezFJUZWyc0NaQ/faBxox/nhjngCRIOpSazJyJ/Gstm44EzjTed5u9DuM9MntNsROe+kiRcSOxRDyfFjkq+nLWPqaavCA0cEJNW+a+WdAzlYxMhZiDD6KqsxIpJP1kdFOB+/Oh4OeZZet87DzmDeTx/gqH8fMgebAEKUBk3/VYJHqCP3k99KdqmfbL2Lq20eH3N4f/Xl3FueZLLSy2Ljy0np2n ssh-key-2024-07-17"]
	#dbsystem_ssh_keys_END#
  }
}

#########################
####### Database ########
#########################

variable "exa_infra" {
  description = "To provision exadata infrastructure"
  type        = map(any)
  default     = {}
}

variable "exa_vmclusters" {
  description = "To provision exadata cloud VM cluster"
  type        = map(any)
  default     = {}
}

variable "dbsystems_vm_bm" {
  description = "To provision DB System"
  type        = map(any)
  default     = {}
}

variable "db_home" {
  type        = map(any)
  description = "Map of database db home to be provisioned"
  default     = {}
}

variable "databases" {
  description = "Map of databases to be provisioned in an existing db_home"
  type        = map(any)
  default     = {}
}

####################################
####### Autonomous Database ########
####################################

variable "adb" {
  type = map(object({
    admin_password           = optional(string)
    character_set            = optional(string)
    compartment_id           = string
    cpu_core_count           = optional(number)
    database_edition         = optional(string)
    data_storage_size_in_tbs = optional(number)
    customer_contacts        = optional(list(string))
    db_name                  = string
    db_version               = optional(string)
    db_workload              = optional(string)
    display_name             = optional(string)
    license_model            = optional(string)
    ncharacter_set           = optional(string)
    network_compartment_id   = optional(string)
    nsg_ids                  = optional(list(string))
    subnet_id                = optional(string)
    vcn_name                 = optional(string)
    whitelisted_ips          = optional(list(string))
    defined_tags             = optional(map(any))
    freeform_tags            = optional(map(any))
  }))
  default = {}
}
